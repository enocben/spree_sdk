import 'errors/decode_error.dart';

/// Paginated collection envelope for the Spree Store API.
///
/// Verified shape (`docs/research/store-api-contract.md` section 0):
/// `{"data": [...], "meta": {page, limit, count, pages, from, to, in,
/// previous, next}}`.
///
/// Note: this differs nominally from the `meta(count/totalCount/totalPages/
/// page)` sketch in `docs/architecture/file-ownership.md` table 2, which was
/// a pre-research proposal. The field names below follow the verified
/// research contract; `totalCount` and `totalPages` are provided as
/// convenience aliases so both spellings read naturally.
class PaginatedResponse<T> {
  /// Items on this page.
  final List<T> data;

  /// Pagination metadata for the collection.
  final PaginationMeta meta;

  const PaginatedResponse({required this.data, required this.meta});

  /// Parses a paginated envelope, applying [fromJson] to each `data` entry.
  ///
  /// Throws [SpreeDecodeError] when `data` is not a list or `meta` is not
  /// a JSON object.
  factory PaginatedResponse.fromJson(
    Object? json,
    T Function(Object?) fromJson,
  ) {
    if (json is! Map) {
      throw SpreeDecodeError(
        expected: 'paginated response with data/meta',
        actual: _summarize(json),
      );
    }
    final Object? rawData = json['data'];
    if (rawData is! List) {
      throw SpreeDecodeError(
        expected: 'paginated response with data list',
        actual: _summarize(rawData),
      );
    }
    final Object? rawMeta = json['meta'];
    if (rawMeta is! Map) {
      throw SpreeDecodeError(
        expected: 'paginated response with meta object',
        actual: _summarize(rawMeta),
      );
    }
    return PaginatedResponse<T>(
      data: rawData.map(fromJson).toList(),
      meta: PaginationMeta.fromJson(
        rawMeta.map(
          (Object? key, Object? value) =>
              MapEntry<String, Object?>(key.toString(), value),
        ),
      ),
    );
  }

  static String _summarize(Object? value) {
    if (value == null) {
      return 'null';
    }
    final String text = value.toString();
    return text.length > 120 ? '${text.substring(0, 120)}…' : text;
  }
}

/// Pagination metadata for a collection response.
///
/// The `in`, `previous` and `next` entries keep their raw server values in
/// [raw] (their exact types are not pinned by the verified contract); the
/// commonly used numeric entries are parsed into typed fields.
class PaginationMeta {
  /// Current page number.
  final int? page;

  /// Requested page size.
  final int? limit;

  /// Number of items on this page.
  final int? count;

  /// Total number of pages.
  final int? pages;

  /// 1-based index of the first item on this page.
  final int? from;

  /// 1-based index of the last item on this page.
  final int? to;

  /// Previous page indicator as sent by the server (raw value in [raw]).
  final int? previous;

  /// Next page indicator as sent by the server (raw value in [raw]).
  final int? next;

  /// Unmodified meta map as sent by the server, including `in`.
  final Map<String, Object?> raw;

  const PaginationMeta({
    this.page,
    this.limit,
    this.count,
    this.pages,
    this.from,
    this.to,
    this.previous,
    this.next,
    this.raw = const <String, Object?>{},
  });

  /// Alias matching the architecture sketch spelling.
  int? get totalCount => count;

  /// Alias matching the architecture sketch spelling.
  int? get totalPages => pages;

  /// Parses a meta object. Never throws: unparseable entries become null
  /// while [raw] always retains the original map.
  factory PaginationMeta.fromJson(Map<String, Object?> json) {
    return PaginationMeta(
      page: _asInt(json['page']),
      limit: _asInt(json['limit']),
      count: _asInt(json['count']),
      pages: _asInt(json['pages']),
      from: _asInt(json['from']),
      to: _asInt(json['to']),
      previous: _asInt(json['previous']),
      next: _asInt(json['next']),
      raw: Map<String, Object?>.unmodifiable(json),
    );
  }

  static int? _asInt(Object? value) {
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value);
    }
    return null;
  }
}
