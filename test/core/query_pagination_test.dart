import 'package:spree_sdk/src/errors/decode_error.dart';
import 'package:spree_sdk/src/pagination.dart';
import 'package:spree_sdk/src/utils/query_builder.dart';
import 'package:test/test.dart';

void main() {
  group('ListQuery', () {
    test('serializes page/limit/expand/fields/sort/q', () {
      const ListQuery query = ListQuery(
        page: 2,
        limit: 25,
        expand: <String>['variants', 'images'],
        fields: <String>['name', 'price'],
        sort: '-created_at',
        filter: <String, String>{'color': 'red', 'price': '10,20'},
      );

      expect(
        query.toQueryParameters(),
        equals(<String, String>{
          'page': '2',
          'limit': '25',
          'expand': 'variants,images',
          'fields': 'name,price',
          'sort': '-created_at',
          'q[color]': 'red',
          'q[price]': '10,20',
        }),
      );
    });

    test('omits empty and null entries', () {
      expect(const ListQuery().toQueryParameters(), isEmpty);
      expect(
        const ListQuery(
          expand: <String>[],
          fields: <String>[],
          sort: '',
        ).toQueryParameters(),
        isEmpty,
      );
    });
  });

  group('pagination envelope', () {
    test('parses data and meta with aliases', () {
      final PaginatedResponse<Map<String, Object?>> response =
          PaginatedResponse<Map<String, Object?>>.fromJson(<String, Object?>{
            'data': <Object?>[
              <String, Object?>{'id': '1'},
              <String, Object?>{'id': '2'},
            ],
            'meta': <String, Object?>{
              'page': 2,
              'limit': 25,
              'count': 2,
              'pages': 9,
              'from': 26,
              'to': 50,
              'in': 207,
              'previous': 1,
              'next': 3,
            },
          }, (Object? item) => item as Map<String, Object?>);

      expect(response.data, hasLength(2));
      expect(response.data.first['id'], equals('1'));
      expect(response.meta.page, equals(2));
      expect(response.meta.limit, equals(25));
      expect(response.meta.totalCount, equals(2));
      expect(response.meta.totalPages, equals(9));
      expect(response.meta.from, equals(26));
      expect(response.meta.to, equals(50));
      expect(response.meta.previous, equals(1));
      expect(response.meta.next, equals(3));
      expect(response.meta.raw['in'], equals(207));
    });

    test('rejects malformed envelopes', () {
      Map<String, Object?> item(Object? value) => value as Map<String, Object?>;

      expect(
        () => PaginatedResponse<Map<String, Object?>>.fromJson(null, item),
        throwsA(isA<SpreeDecodeError>()),
      );
      expect(
        () => PaginatedResponse<Map<String, Object?>>.fromJson(
          <String, Object?>{'data': 'nope', 'meta': <String, Object?>{}},
          item,
        ),
        throwsA(isA<SpreeDecodeError>()),
      );
      expect(
        () => PaginatedResponse<Map<String, Object?>>.fromJson(
          <String, Object?>{'data': <Object?>[]},
          item,
        ),
        throwsA(isA<SpreeDecodeError>()),
      );
    });
  });
}
