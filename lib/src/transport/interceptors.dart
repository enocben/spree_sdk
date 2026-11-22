import 'dart:async';

import 'transport.dart';

/// Intercepts an outgoing request before it is sent.
///
/// May inspect, modify or replace the request (for example to add tracing
/// headers). Must never log header values unredacted.
typedef RequestInterceptor = FutureOr<SpreeRequest> Function(
  SpreeRequest request,
);

/// Intercepts an incoming response before it is decoded.
typedef ResponseInterceptor = FutureOr<SpreeResponse> Function(
  SpreeResponse response,
);
