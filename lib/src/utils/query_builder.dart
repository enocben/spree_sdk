/// List query conventions for the Spree Store API.
///
/// Verified against `docs/research/store-api-contract.md` section 0
/// (`CORE params.ts`, `helpers.ts`): `page`/`limit` passthrough, `expand` and
/// `fields` comma-joined, `sort` passthrough (prefix `-` for descending),
/// every other filter key wrapped as `q[…]` (Ransack). Nothing else is ever
/// emitted — unknown parameters must not be invented (AGENTS.md section 3.1).
class ListQuery {
  /// 1-based page number.
  final int? page;

  /// Page size.
  final int? limit;

  /// Related resources to side-load (comma-joined into `expand`).
  final List<String>? expand;

  /// Sparse fieldsets (comma-joined into `fields`).
  final List<String>? fields;

  /// Sort expression, `-` prefix for descending (passed through as `sort`).
  final String? sort;

  /// Attribute filters, each wrapped as `q[key]`.
  final Map<String, String>? filter;

  const ListQuery({
    this.page,
    this.limit,
    this.expand,
    this.fields,
    this.sort,
    this.filter,
  });

  /// Serializes this query to URL query parameters.
  ///
  /// Empty collections and empty strings are omitted.
  Map<String, String> toQueryParameters() {
    final Map<String, String> params = <String, String>{};
    if (page != null) {
      params['page'] = '$page';
    }
    if (limit != null) {
      params['limit'] = '$limit';
    }
    if (expand != null && expand!.isNotEmpty) {
      params['expand'] = expand!.join(',');
    }
    if (fields != null && fields!.isNotEmpty) {
      params['fields'] = fields!.join(',');
    }
    if (sort != null && sort!.isNotEmpty) {
      params['sort'] = sort!;
    }
    final Map<String, String>? filter = this.filter;
    if (filter != null) {
      for (final MapEntry<String, String> entry in filter.entries) {
        params['q[${entry.key}]'] = entry.value;
      }
    }
    return params;
  }
}
