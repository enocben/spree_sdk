/// Idiomatic Dart SDK for the Spree Commerce Store API.
///
/// Verified against `@spree/sdk` 6.0.5 at spree/spree SHA `d2f38e6`
/// (2026-11-22), Store API v3, base path `/api/v3/store`.
/// See `doc/research/` for contracts and `doc/architecture/` for design.
library;

// Core: client, configuration, auth provider contract, errors,
// pagination, transport contracts, query and retry utilities.
export 'src/auth/provider.dart';
export 'src/client.dart';
export 'src/client_resources.dart';
export 'src/errors/decode_error.dart';
export 'src/errors/http_error.dart';
export 'src/errors/spree_exception.dart';
export 'src/errors/transport_error.dart';
export 'src/pagination.dart';
export 'src/transport/interceptors.dart';
export 'src/transport/request_options.dart';
export 'src/transport/transport.dart';
export 'src/utils/query_builder.dart';
export 'src/utils/retry_config.dart';

// Models: request/response DTOs and request-param value objects.
export 'src/models/auth.dart';
export 'src/models/cart.dart';
export 'src/models/customer.dart';
export 'src/models/meta.dart';
export 'src/models/order.dart';
export 'src/models/params_auth.dart';
export 'src/models/params_checkout.dart';
export 'src/models/params_orders.dart';
export 'src/models/product.dart';
export 'src/models/taxons.dart';

// Resources: typed Store API operations.
export 'src/resources/auth.dart';
export 'src/resources/carts.dart';
export 'src/resources/claims.dart';
export 'src/resources/companies.dart';
export 'src/resources/customer_payments.dart';
export 'src/resources/customers.dart';
export 'src/resources/delivery.dart';
export 'src/resources/gdpr.dart';
export 'src/resources/newsletter.dart';
export 'src/resources/orders.dart';
export 'src/resources/payment_sessions.dart';
export 'src/resources/products.dart';
export 'src/resources/returns.dart';
export 'src/resources/storefront_meta.dart';
export 'src/resources/taxons.dart';
export 'src/resources/wishlists.dart';
