import 'client.dart';
import 'resources/auth.dart';
import 'resources/carts.dart';
import 'resources/claims.dart';
import 'resources/companies.dart';
import 'resources/customer_payments.dart';
import 'resources/customers.dart';
import 'resources/delivery.dart';
import 'resources/gdpr.dart';
import 'resources/newsletter.dart';
import 'resources/orders.dart';
import 'resources/payment_sessions.dart';
import 'resources/products.dart';
import 'resources/returns.dart';
import 'resources/storefront_meta.dart';
import 'resources/taxons.dart';
import 'resources/wishlists.dart';

/// Typed resource accessors for [SpreeClient].
///
/// Kept in this file (instead of `client.dart`) so the frozen core client
/// contract stays untouched while resources evolve. Resources are immutable
/// value objects over the client, so each accessor cheaply wraps [this].
extension SpreeClientResources on SpreeClient {
  AuthResource get auth => AuthResource(this);
  ProductsResource get products => ProductsResource(this);
  CategoriesResource get categories => CategoriesResource(this);
  SellersResource get sellers => SellersResource(this);
  CollectionsResource get collections => CollectionsResource(this);
  CountriesResource get countries => CountriesResource(this);
  CurrenciesResource get currencies => CurrenciesResource(this);
  LocalesResource get locales => LocalesResource(this);
  ChannelResource get channel => ChannelResource(this);
  StoreResource get store => StoreResource(this);
  PoliciesResource get policies => PoliciesResource(this);
  MarketsResource get markets => MarketsResource(this);
  DeliveryMethodsResource get deliveryMethods => DeliveryMethodsResource(this);
  CartsResource get carts => CartsResource(this);
  PaymentSessionsResource get paymentSessions => PaymentSessionsResource(this);
  OrdersResource get orders => OrdersResource(this);
  OrderReturnsResource get orderReturns => OrderReturnsResource(this);
  OrderClaimsResource get orderClaims => OrderClaimsResource(this);
  CustomerResource get customer => CustomerResource(this);
  CustomerAddressesResource get customerAddresses =>
      CustomerAddressesResource(this);
  CustomerCreditCardsResource get customerCreditCards =>
      CustomerCreditCardsResource(this);
  CustomerGiftCardsResource get customerGiftCards =>
      CustomerGiftCardsResource(this);
  CustomerStoreCreditsResource get customerStoreCredits =>
      CustomerStoreCreditsResource(this);
  CustomerDigitalLinksResource get customerDigitalLinks =>
      CustomerDigitalLinksResource(this);
  PaymentSetupSessionsResource get paymentSetupSessions =>
      PaymentSetupSessionsResource(this);
  NewsletterResource get newsletter => NewsletterResource(this);
  GdprResource get gdpr => GdprResource(this);
  WishlistsResource get wishlists => WishlistsResource(this);
  WishlistItemsResource get wishlistItems => WishlistItemsResource(this);
  AccountCompaniesResource get accountCompanies =>
      AccountCompaniesResource(this);
  CompaniesResource get companies => CompaniesResource(this);
  CompanyAddressesResource get companyAddresses =>
      CompanyAddressesResource(this);
  CompanyMembersResource get companyMembers => CompanyMembersResource(this);
  CompanyInvitationsResource get companyInvitations =>
      CompanyInvitationsResource(this);
  CompanyOrdersResource get companyOrders => CompanyOrdersResource(this);
  CompanyInvitationTokenResource get companyInvitationToken =>
      CompanyInvitationTokenResource(this);
}
