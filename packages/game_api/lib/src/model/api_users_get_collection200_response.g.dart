// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_get_collection200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsersGetCollection200Response
    extends ApiUsersGetCollection200Response {
  @override
  final BuiltList<UserJsonldUserRead> hydraColonMember;
  @override
  final int? hydraColonTotalItems;
  @override
  final ApiGamesGetCollection200ResponseHydraView? hydraColonView;
  @override
  final ApiGamesGetCollection200ResponseHydraSearch? hydraColonSearch;

  factory _$ApiUsersGetCollection200Response(
          [void Function(ApiUsersGetCollection200ResponseBuilder)? updates]) =>
      (new ApiUsersGetCollection200ResponseBuilder()..update(updates))._build();

  _$ApiUsersGetCollection200Response._(
      {required this.hydraColonMember,
      this.hydraColonTotalItems,
      this.hydraColonView,
      this.hydraColonSearch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hydraColonMember,
        r'ApiUsersGetCollection200Response', 'hydraColonMember');
  }

  @override
  ApiUsersGetCollection200Response rebuild(
          void Function(ApiUsersGetCollection200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiUsersGetCollection200ResponseBuilder toBuilder() =>
      new ApiUsersGetCollection200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsersGetCollection200Response &&
        hydraColonMember == other.hydraColonMember &&
        hydraColonTotalItems == other.hydraColonTotalItems &&
        hydraColonView == other.hydraColonView &&
        hydraColonSearch == other.hydraColonSearch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hydraColonMember.hashCode);
    _$hash = $jc(_$hash, hydraColonTotalItems.hashCode);
    _$hash = $jc(_$hash, hydraColonView.hashCode);
    _$hash = $jc(_$hash, hydraColonSearch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiUsersGetCollection200Response')
          ..add('hydraColonMember', hydraColonMember)
          ..add('hydraColonTotalItems', hydraColonTotalItems)
          ..add('hydraColonView', hydraColonView)
          ..add('hydraColonSearch', hydraColonSearch))
        .toString();
  }
}

class ApiUsersGetCollection200ResponseBuilder
    implements
        Builder<ApiUsersGetCollection200Response,
            ApiUsersGetCollection200ResponseBuilder> {
  _$ApiUsersGetCollection200Response? _$v;

  ListBuilder<UserJsonldUserRead>? _hydraColonMember;
  ListBuilder<UserJsonldUserRead> get hydraColonMember =>
      _$this._hydraColonMember ??= new ListBuilder<UserJsonldUserRead>();
  set hydraColonMember(ListBuilder<UserJsonldUserRead>? hydraColonMember) =>
      _$this._hydraColonMember = hydraColonMember;

  int? _hydraColonTotalItems;
  int? get hydraColonTotalItems => _$this._hydraColonTotalItems;
  set hydraColonTotalItems(int? hydraColonTotalItems) =>
      _$this._hydraColonTotalItems = hydraColonTotalItems;

  ApiGamesGetCollection200ResponseHydraViewBuilder? _hydraColonView;
  ApiGamesGetCollection200ResponseHydraViewBuilder get hydraColonView =>
      _$this._hydraColonView ??=
          new ApiGamesGetCollection200ResponseHydraViewBuilder();
  set hydraColonView(
          ApiGamesGetCollection200ResponseHydraViewBuilder? hydraColonView) =>
      _$this._hydraColonView = hydraColonView;

  ApiGamesGetCollection200ResponseHydraSearchBuilder? _hydraColonSearch;
  ApiGamesGetCollection200ResponseHydraSearchBuilder get hydraColonSearch =>
      _$this._hydraColonSearch ??=
          new ApiGamesGetCollection200ResponseHydraSearchBuilder();
  set hydraColonSearch(
          ApiGamesGetCollection200ResponseHydraSearchBuilder?
              hydraColonSearch) =>
      _$this._hydraColonSearch = hydraColonSearch;

  ApiUsersGetCollection200ResponseBuilder() {
    ApiUsersGetCollection200Response._defaults(this);
  }

  ApiUsersGetCollection200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hydraColonMember = $v.hydraColonMember.toBuilder();
      _hydraColonTotalItems = $v.hydraColonTotalItems;
      _hydraColonView = $v.hydraColonView?.toBuilder();
      _hydraColonSearch = $v.hydraColonSearch?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiUsersGetCollection200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiUsersGetCollection200Response;
  }

  @override
  void update(void Function(ApiUsersGetCollection200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsersGetCollection200Response build() => _build();

  _$ApiUsersGetCollection200Response _build() {
    _$ApiUsersGetCollection200Response _$result;
    try {
      _$result = _$v ??
          new _$ApiUsersGetCollection200Response._(
              hydraColonMember: hydraColonMember.build(),
              hydraColonTotalItems: hydraColonTotalItems,
              hydraColonView: _hydraColonView?.build(),
              hydraColonSearch: _hydraColonSearch?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hydraColonMember';
        hydraColonMember.build();

        _$failedField = 'hydraColonView';
        _hydraColonView?.build();
        _$failedField = 'hydraColonSearch';
        _hydraColonSearch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiUsersGetCollection200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
