import 'spree_exception.dart';

/// A response body did not match the expected shape.
class SpreeDecodeError extends SpreeException {
  /// Description of what was expected (for example `JSON object`).
  final String expected;

  /// The offending payload (truncated), when available.
  final Object? actual;

  SpreeDecodeError({required this.expected, this.actual})
    : super(
        message: actual == null
            ? 'Could not decode response as $expected'
            : 'Could not decode response as $expected: $actual',
      );
}
