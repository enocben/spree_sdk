/// GDPR data-request resource for the Spree Store API (Phase 05 group A).
///
/// Verified contracts (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `doc/research/store-api-contract.md` §7 (`customer.dataRequests.
///   list/get/create`, KEY+JWT) and §8 (`dataRequests.get/confirm` by
///   email-link token, no credential — the token IS the credential);
/// * `doc/research/authentication-flows.md` §I — double opt-in: create
///   yields `awaiting_confirmation`, the confirmation email appends the
///   token to `redirect_url`, confirmation must run on user gesture (mail
///   scanners prefetch links), `GET` by token later carries the download
///   link when ready; the authenticated `get` never carries the download
///   link; erasure requests need `current_password`.
///
/// [DataRequest] is modeled permissively on purpose: the research pass did
/// not pin the SPEC schema beyond `status` and the download-link rule
/// (open-questions Q7), so documented fields are nullable and the full
/// server payload is retained in [DataRequest.raw].
///
/// Auth rule: list/get/create require the customer JWT (KEY+JWT, forwarded
/// via [options]); token get/confirm send no JWT (the path token is the
/// credential). Mutations are never retried by this resource
/// (AGENTS.md §3.9).
library;

import '../client.dart';
import '../errors/decode_error.dart';
import '../models/params_auth.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

export '../models/params_auth.dart' show CreateDataRequestParams;

/// Copies [options] without any credential, preserving only the
/// non-credential context for the token-based (credential-less) endpoints.
///
/// The empty-string [RequestOptions.token] is intentional: [SpreeClient]
/// only sends `Authorization` for non-empty tokens and only consults the
/// configured provider when the per-request token is null, so `''` blocks
/// both paths and guarantees no credential is attached.
RequestOptions _withoutCredentials(RequestOptions? options) => RequestOptions(
  token: '',
  locale: options?.locale,
  currency: options?.currency,
  country: options?.country,
  channel: options?.channel,
  headers: options?.headers,
  timeout: options?.timeout,
);

/// Throws [SpreeDecodeError] unless [json] is a JSON object.
Map<String, Object?> _asObject(Object? json, String operation) {
  if (json is Map<String, Object?>) {
    return json;
  }
  if (json is Map) {
    return json.map(
      (Object? key, Object? value) =>
          MapEntry<String, Object?>(key.toString(), value),
    );
  }
  throw SpreeDecodeError(
    expected: '$operation response object',
    actual: json == null ? 'null' : json.runtimeType.toString(),
  );
}

/// A GDPR data request.
///
/// Sources: `packages/sdk/src/types/` data-request types + SPEC
/// `store.yaml#/components/schemas/DataRequest` (shapes not pinned in the
/// research pass — see the library doc). All documented fields are
/// nullable; [raw] always retains the full server payload.
class DataRequest {
  /// Creates a data request.
  const DataRequest({
    required this.id,
    this.type,
    this.status,
    this.email,
    this.downloadUrl,
    this.createdAt,
    this.updatedAt,
    this.raw = const <String, Object?>{},
  });

  /// Parses a data request from its JSON shape. Never throws: unknown
  /// fields land in [raw].
  factory DataRequest.fromJson(Map<String, Object?> json) => DataRequest(
    id: json['id']?.toString() ?? '',
    type: json['type'] as String?,
    status: json['status'] as String?,
    email: json['email'] as String?,
    downloadUrl: (json['download_url'] ?? json['download_link']) as String?,
    createdAt: json['created_at'] as String?,
    updatedAt: json['updated_at'] as String?,
    raw: Map<String, Object?>.unmodifiable(json),
  );

  /// Unique identifier.
  final String id;

  /// Request type (server-defined; unpinned values).
  final String? type;

  /// Processing status (e.g. `awaiting_confirmation` after create).
  final String? status;

  /// Account email the request was filed for, when reported.
  final String? email;

  /// Download link, present only on the token `GET` when ready — never on
  /// the authenticated `get` (verified contract §7).
  final String? downloadUrl;

  /// Creation timestamp, as reported by the API (kept as-is).
  final String? createdAt;

  /// Update timestamp, as reported by the API (kept as-is).
  final String? updatedAt;

  /// Full server payload, unmodified.
  final Map<String, Object?> raw;

  /// Serializes this request back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    if (type != null) 'type': type,
    if (status != null) 'status': status,
    if (email != null) 'email': email,
    if (downloadUrl != null) 'download_url': downloadUrl,
    if (createdAt != null) 'created_at': createdAt,
    if (updatedAt != null) 'updated_at': updatedAt,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataRequest &&
          id == other.id &&
          type == other.type &&
          status == other.status &&
          email == other.email &&
          downloadUrl == other.downloadUrl;

  @override
  int get hashCode => Object.hash(id, type, status, email, downloadUrl);
}

/// GDPR data-request operations: the authenticated `/customers/me`
/// collection plus the token-based (credential-less) endpoints.
///
/// ```dart
/// final gdpr = GdprResource(client);
/// final DataRequest req = await gdpr.create(
///   params: CreateDataRequestParams(type: 'export'),
///   options: RequestOptions(token: jwt),
/// );
/// // ... user clicks the email link (user gesture only) ...
/// await gdpr.confirm(tokenFromLink);
/// ```
class GdprResource {
  /// Creates a GDPR resource bound to [SpreeClient].
  const GdprResource(this.client);

  /// The Store API client used for every operation.
  final SpreeClient client;

  /// `GET /customers/me/data_requests` → paged [DataRequest] entries
  /// (most recent first). Auth: KEY+JWT.
  Future<PaginatedResponse<DataRequest>> list({
    ListQuery? list,
    Map<String, String>? query,
    RequestOptions? options,
  }) async {
    final Map<String, String> merged = <String, String>{
      ...?list?.toQueryParameters(),
      ...?query,
    };
    return client.requestPaginated<DataRequest>(
      'GET',
      '/customers/me/data_requests',
      query: merged,
      options: options,
      fromJson: (Object? item) =>
          DataRequest.fromJson(_asObject(item, 'dataRequests.list')),
    );
  }

  /// `GET /customers/me/data_requests/{id}` → single [DataRequest].
  ///
  /// Never carries the download link (verified contract §7).
  /// Auth: KEY+JWT.
  Future<DataRequest> get(String id, {RequestOptions? options}) async {
    final Object? json = await client.request(
      'GET',
      '/customers/me/data_requests/$id',
      options: options,
    );
    return DataRequest.fromJson(_asObject(json, 'dataRequests.get'));
  }

  /// `POST /customers/me/data_requests` → created [DataRequest] in
  /// `awaiting_confirmation` status. Auth: KEY+JWT.
  Future<DataRequest> create({
    required CreateDataRequestParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/customers/me/data_requests',
      body: params.toJson(),
      options: options,
    );
    return DataRequest.fromJson(_asObject(json, 'dataRequests.create'));
  }

  /// `GET /data_requests/{token}` → [DataRequest], carrying the download
  /// link when ready. No credential: the email-link [token] (path segment,
  /// percent-encoded by the transport) is the credential — any configured
  /// JWT is deliberately not sent. [options] carries only non-credential
  /// context (locale, timeout, …).
  Future<DataRequest> getByToken(
    String token, {
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'GET',
      '/data_requests/$token',
      options: _withoutCredentials(options),
    );
    return DataRequest.fromJson(_asObject(json, 'dataRequests.getByToken'));
  }

  /// `POST /data_requests/{token}/confirmation` → [DataRequest], starts
  /// processing. No credential (see [getByToken]). Call only on explicit
  /// user gesture — mail scanners prefetch email links (flows §I).
  Future<DataRequest> confirm(String token, {RequestOptions? options}) async {
    final Object? json = await client.request(
      'POST',
      '/data_requests/$token/confirmation',
      options: _withoutCredentials(options),
    );
    return DataRequest.fromJson(_asObject(json, 'dataRequests.confirm'));
  }
}
