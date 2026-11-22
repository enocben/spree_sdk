/// Newsletter resource for the Spree Store API (Phase 05 group A).
///
/// Verified contracts (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `doc/research/store-api-contract.md` §6 — method, path, auth, body
///   and envelope rows for `newsletterSubscribers.create/verify/
///   requestUnsubscribe/delete`;
/// * `doc/research/authentication-flows.md` §K — subscribe links/auto-
///   verifies on email match with an optional JWT; verify consumes the
///   emailed token; `requestUnsubscribe` always yields 202 (void,
///   anti-enumeration); delete takes the JWT (own subscription) or the
///   email-link `token` query.
///
/// Auth rule: subscribe forwards the caller's JWT when given (KEY + optional
/// JWT); verify and request-unsubscribe are KEY-only (no credential is ever
/// attached); delete forwards the caller's JWT when given and otherwise
/// relies on the `token` query. Mutations are never retried by this
/// resource (AGENTS.md §3.9).
library;

import '../client.dart';
import '../errors/decode_error.dart';
import '../models/customer.dart' show NewsletterSubscriber;
import '../models/params_auth.dart';
import '../transport/request_options.dart';

export '../models/params_auth.dart'
    show
        NewsletterSubscribeParams,
        NewsletterUnsubscribeRequestParams,
        NewsletterVerifyParams;

/// Copies [options] without any credential, preserving only the
/// non-credential context for KEY-only operations.
///
/// The empty-string [RequestOptions.token] is intentional: [SpreeClient]
/// only sends `Authorization` for non-empty tokens and only consults the
/// configured provider when the per-request token is null, so `''` blocks
/// both paths and guarantees no credential is attached.
RequestOptions _keyOnly(RequestOptions? options) => RequestOptions(
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

/// Newsletter subscription operations.
///
/// ```dart
/// final newsletter = NewsletterResource(client);
/// await newsletter.requestUnsubscribe(
///   params: NewsletterUnsubscribeRequestParams(email: 'sam@example.com'),
/// );
/// ```
class NewsletterResource {
  /// Creates a newsletter resource bound to [SpreeClient].
  const NewsletterResource(this.client);

  /// The Store API client used for every operation.
  final SpreeClient client;

  /// `POST /newsletter_subscribers` → [NewsletterSubscriber].
  ///
  /// Auth: KEY (+ optional JWT: links the subscription to the customer
  /// and auto-verifies on email match — forward via [options]).
  Future<NewsletterSubscriber> subscribe({
    required NewsletterSubscribeParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/newsletter_subscribers',
      body: params.toJson(),
      options: options,
    );
    return NewsletterSubscriber.fromJson(_asObject(json, 'subscribe'));
  }

  /// `POST /newsletter_subscribers/verify` → verified
  /// [NewsletterSubscriber].
  ///
  /// Consumes the emailed verification token. Auth: KEY only.
  Future<NewsletterSubscriber> verify({
    required NewsletterVerifyParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/newsletter_subscribers/verify',
      body: params.toJson(),
      options: _keyOnly(options),
    );
    return NewsletterSubscriber.fromJson(_asObject(json, 'verify'));
  }

  /// `POST /newsletter_subscribers/request_unsubscribe` → `void`
  /// (always 202, anti-enumeration). Auth: KEY only.
  Future<void> requestUnsubscribe({
    required NewsletterUnsubscribeRequestParams params,
    RequestOptions? options,
  }) async {
    await client.request(
      'POST',
      '/newsletter_subscribers/request_unsubscribe',
      body: params.toJson(),
      options: _keyOnly(options),
    );
  }

  /// `DELETE /newsletter_subscribers/{id}` → `void`.
  ///
  /// Auth: KEY + JWT for the own subscription (forward via [options]), or
  /// the email-link [token] as `?token=` query instead. At least one of
  /// the two credentials is required by the server.
  Future<void> delete(
    String id, {
    String? token,
    RequestOptions? options,
  }) async {
    await client.request(
      'DELETE',
      '/newsletter_subscribers/$id',
      query: token == null ? null : <String, String>{'token': token},
      options: options,
    );
  }
}
