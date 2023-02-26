// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_games_get_collection200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiGamesGetCollection200Response
    extends ApiGamesGetCollection200Response {
  @override
  final BuiltList<GameJsonldGameRead> hydraColonMember;
  @override
  final int? hydraColonTotalItems;
  @override
  final ApiGamesGetCollection200ResponseHydraView? hydraColonView;
  @override
  final ApiGamesGetCollection200ResponseHydraSearch? hydraColonSearch;

  factory _$ApiGamesGetCollection200Response(
          [void Function(ApiGamesGetCollection200ResponseBuilder)? updates]) =>
      (new ApiGamesGetCollection200ResponseBuilder()..update(updates))._build();

  _$ApiGamesGetCollection200Response._(
      {required this.hydraColonMember,
      this.hydraColonTotalItems,
      this.hydraColonView,
      this.hydraColonSearch})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hydraColonMember,
        r'ApiGamesGetCollection200Response', 'hydraColonMember');
  }

  @override
  ApiGamesGetCollection200Response rebuild(
          void Function(ApiGamesGetCollection200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiGamesGetCollection200ResponseBuilder toBuilder() =>
      new ApiGamesGetCollection200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiGamesGetCollection200Response &&
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
    return (newBuiltValueToStringHelper(r'ApiGamesGetCollection200Response')
          ..add('hydraColonMember', hydraColonMember)
          ..add('hydraColonTotalItems', hydraColonTotalItems)
          ..add('hydraColonView', hydraColonView)
          ..add('hydraColonSearch', hydraColonSearch))
        .toString();
  }
}

class ApiGamesGetCollection200ResponseBuilder
    implements
        Builder<ApiGamesGetCollection200Response,
            ApiGamesGetCollection200ResponseBuilder> {
  _$ApiGamesGetCollection200Response? _$v;

  ListBuilder<GameJsonldGameRead>? _hydraColonMember;
  ListBuilder<GameJsonldGameRead> get hydraColonMember =>
      _$this._hydraColonMember ??= new ListBuilder<GameJsonldGameRead>();
  set hydraColonMember(ListBuilder<GameJsonldGameRead>? hydraColonMember) =>
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

  ApiGamesGetCollection200ResponseBuilder() {
    ApiGamesGetCollection200Response._defaults(this);
  }

  ApiGamesGetCollection200ResponseBuilder get _$this {
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
  void replace(ApiGamesGetCollection200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiGamesGetCollection200Response;
  }

  @override
  void update(void Function(ApiGamesGetCollection200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiGamesGetCollection200Response build() => _build();

  _$ApiGamesGetCollection200Response _build() {
    _$ApiGamesGetCollection200Response _$result;
    try {
      _$result = _$v ??
          new _$ApiGamesGetCollection200Response._(
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
            r'ApiGamesGetCollection200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
