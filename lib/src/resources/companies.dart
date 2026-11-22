/// B2B company directory, invitations and company orders (Store API only).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `packages/sdk/src/store-client.ts` (`account.companies` SRC 1376,
///   `companies.get/update` SRC 1385, `companies.addresses.*` SRC 1396,
///   `companies.members.list/create` SRC 1432, `companies.invitations.*`
///   SRC 1467, `companies.orders.list` SRC 1485,
///   `companyInvitations.lookup/accept` SRC 1502);
/// * contracts: `doc/research/store-api-contract.md` section 8.
///
/// Auth: every company read/write needs a customer JWT plus standing over
/// the node (membership on it or an ancestor); within a company any member
/// may read and manage the directory. Invitation lookup/accept carry the
/// plaintext email token as the credential and need no JWT (acceptance may
/// register the account, or bind to the signed-in customer when called
/// authenticated).
///
/// P2 scope excluded by the owner: member removal
/// (`DELETE /companies/{id}/members/{id}`) and member-side invitation
/// revoke (`DELETE /company_invitations/{id}`) have no SPEC path — neither
/// is implemented here.
library;

import '../client.dart';
import '../models/cart.dart';
import '../models/order.dart';
import '../models/params_orders.dart';
import '../pagination.dart';
import '../transport/request_options.dart';
import '../utils/query_builder.dart';

/// The signed-in buyer's company directory.
class AccountCompaniesResource {
  /// Creates an account-companies resource bound to [SpreeClient].
  const AccountCompaniesResource(this._client);

  final SpreeClient _client;

  /// Lists the buyer's memberships, each with its node and ancestor path.
  ///
  /// `GET /account/companies` (verified: SPEC path, SRC 1376). The
  /// envelope is `{data: [...]}` — a bare list, NOT the paginated
  /// `data`+`meta` wrapper (verified SRC comment).
  Future<List<AccountCompany>> list({RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/account/companies',
      options: options,
    );
    final Map<String, Object?> envelope = json as Map<String, Object?>;
    final List<Object?> data = envelope['data'] as List<Object?>;
    return data
        .map((e) => AccountCompany.fromJson(e as Map<String, Object?>))
        .toList();
  }
}

/// Company nodes: read and rename.
class CompaniesResource {
  /// Creates a companies resource bound to [SpreeClient].
  const CompaniesResource(this._client);

  final SpreeClient _client;

  /// Fetches one company node by id.
  ///
  /// `GET /companies/{id}` (verified: SPEC path, SRC 1385).
  Future<Company> get(String id, {RequestOptions? options}) async {
    final Object? json = await _client.request(
      'GET',
      '/companies/$id',
      options: options,
    );
    return Company.fromJson(json as Map<String, Object?>);
  }

  /// Updates a company node.
  ///
  /// `PATCH /companies/{id}` (verified: SPEC path, SRC 1388).
  Future<Company> update(
    String id,
    UpdateCompanyParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/companies/$id',
      body: params.toJson(),
      options: options,
    );
    return Company.fromJson(json as Map<String, Object?>);
  }
}

/// Addresses of a company node.
class CompanyAddressesResource {
  /// Creates a company-addresses resource bound to [SpreeClient].
  const CompanyAddressesResource(this._client);

  final SpreeClient _client;

  /// Lists addresses of a company node.
  ///
  /// `GET /companies/{id}/addresses` (verified: SPEC path, SRC 1396).
  Future<PaginatedResponse<Address>> list(
    String companyId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Address>(
      'GET',
      '/companies/$companyId/addresses',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          Address.fromJson(item as Map<String, Object?>),
    );
  }

  /// Creates an address on a company node.
  ///
  /// `POST /companies/{id}/addresses` (verified: SPEC path, SRC 1406).
  Future<Address> create(
    String companyId,
    CompanyAddressCreateParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/companies/$companyId/addresses',
      body: params.toJson(),
      options: options,
    );
    return Address.fromJson(json as Map<String, Object?>);
  }

  /// Updates an address on a company node.
  ///
  /// `PATCH /companies/{id}/addresses/{id}` (verified: SPEC path,
  /// SRC 1417).
  Future<Address> update(
    String companyId,
    String id,
    CompanyAddressUpdateParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'PATCH',
      '/companies/$companyId/addresses/$id',
      body: params.toJson(),
      options: options,
    );
    return Address.fromJson(json as Map<String, Object?>);
  }

  /// Deletes an address on a company node.
  ///
  /// `DELETE /companies/{id}/addresses/{id}` (verified: SPEC path,
  /// SRC 1423). Resolves on 2xx with no body.
  Future<void> delete(
    String companyId,
    String id, {
    RequestOptions? options,
  }) async {
    await _client.request(
      'DELETE',
      '/companies/$companyId/addresses/$id',
      options: options,
    );
  }
}

/// Members of a company node (member removal excluded: no SPEC path).
class CompanyMembersResource {
  /// Creates a company-members resource bound to [SpreeClient].
  const CompanyMembersResource(this._client);

  final SpreeClient _client;

  /// Lists members of a company node.
  ///
  /// `GET /companies/{id}/members` (verified: SPEC path, SRC 1432).
  Future<PaginatedResponse<CompanyMembership>> list(
    String companyId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<CompanyMembership>(
      'GET',
      '/companies/$companyId/members',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          CompanyMembership.fromJson(item as Map<String, Object?>),
    );
  }

  /// Invites a person by email.
  ///
  /// `POST /companies/{id}/members` (verified: SPEC path, SRC 1451).
  /// Even an existing customer joins only by accepting the emailed
  /// invitation, so this always returns the invitation.
  Future<CompanyInvitation> create(
    String companyId,
    AddCompanyMemberParams params, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/companies/$companyId/members',
      body: params.toJson(),
      options: options,
    );
    return CompanyInvitation.fromJson(json as Map<String, Object?>);
  }
}

/// Pending invitations of a company node (company-scoped revoke only).
class CompanyInvitationsResource {
  /// Creates a company-invitations resource bound to [SpreeClient].
  const CompanyInvitationsResource(this._client);

  final SpreeClient _client;

  /// Lists pending invitations of a company node.
  ///
  /// `GET /companies/{id}/invitations` (verified: SPEC path, SRC 1467).
  Future<PaginatedResponse<CompanyInvitation>> list(
    String companyId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<CompanyInvitation>(
      'GET',
      '/companies/$companyId/invitations',
      list: query,
      options: options,
      fromJson: (Object? item) =>
          CompanyInvitation.fromJson(item as Map<String, Object?>),
    );
  }

  /// Revokes a pending invitation; its token then stops resolving.
  ///
  /// `DELETE /companies/{id}/invitations/{id}` (verified: SPEC path,
  /// SRC 1475). Resolves on 2xx with no body. The member-side revoke by
  /// prefixed id (`DELETE /company_invitations/{id}`) is P2 (excluded):
  /// no SPEC path.
  Future<void> delete(
    String companyId,
    String id, {
    RequestOptions? options,
  }) async {
    await _client.request(
      'DELETE',
      '/companies/$companyId/invitations/$id',
      options: options,
    );
  }
}

/// Completed purchases across a company node's subtree.
class CompanyOrdersResource {
  /// Creates a company-orders resource bound to [SpreeClient].
  const CompanyOrdersResource(this._client);

  final SpreeClient _client;

  /// Lists company orders.
  ///
  /// `GET /companies/{id}/orders` (verified: SPEC path, SRC 1485).
  Future<PaginatedResponse<Order>> list(
    String companyId, {
    ListQuery? query,
    RequestOptions? options,
  }) {
    return _client.requestPaginated<Order>(
      'GET',
      '/companies/$companyId/orders',
      list: query,
      options: options,
      fromJson: (Object? item) => Order.fromJson(item as Map<String, Object?>),
    );
  }
}

/// Invitation lookup and acceptance by plaintext email token.
///
/// The token is the credential: no JWT needed. Acceptance may register the
/// account (registration payload), or bind the invitation to the signed-in
/// customer when called authenticated.
class CompanyInvitationTokenResource {
  /// Creates an invitation-token resource bound to [SpreeClient].
  const CompanyInvitationTokenResource(this._client);

  final SpreeClient _client;

  /// Looks up an invitation by its email token, with company/store context.
  ///
  /// `GET /company_invitations/{token}` (verified: SPEC path, SRC 1502).
  Future<CompanyInvitationLookup> lookup(
    String token, {
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'GET',
      '/company_invitations/$token',
      options: options,
    );
    return CompanyInvitationLookup.fromJson(json as Map<String, Object?>);
  }

  /// Accepts an invitation by token; returns the created membership.
  ///
  /// `POST /company_invitations/{token}/accept` (verified: SPEC path,
  /// SRC 1518). Defaults to `{}` upstream when no registration payload is
  /// given — mirrored here by sending an empty object when [params] is
  /// null.
  Future<CompanyMembership> accept(
    String token, {
    AcceptCompanyInvitationParams? params,
    RequestOptions? options,
  }) async {
    final Object? json = await _client.request(
      'POST',
      '/company_invitations/$token/accept',
      body: params?.toJson() ?? <String, Object?>{},
      options: options,
    );
    return CompanyMembership.fromJson(json as Map<String, Object?>);
  }
}
