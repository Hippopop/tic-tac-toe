// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_games_get_collection200_response_hydra_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiGamesGetCollection200ResponseHydraView
    extends ApiGamesGetCollection200ResponseHydraView {
  @override
  final String? atId;
  @override
  final String? atType;
  @override
  final String? hydraColonFirst;
  @override
  final String? hydraColonLast;
  @override
  final String? hydraColonPrevious;
  @override
  final String? hydraColonNext;

  factory _$ApiGamesGetCollection200ResponseHydraView(
          [void Function(ApiGamesGetCollection200ResponseHydraViewBuilder)?
              updates]) =>
      (ApiGamesGetCollection200ResponseHydraViewBuilder()..update(updates))
          ._build();

  _$ApiGamesGetCollection200ResponseHydraView._(
      {this.atId,
      this.atType,
      this.hydraColonFirst,
      this.hydraColonLast,
      this.hydraColonPrevious,
      this.hydraColonNext})
      : super._();

  @override
  ApiGamesGetCollection200ResponseHydraView rebuild(
          void Function(ApiGamesGetCollection200ResponseHydraViewBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiGamesGetCollection200ResponseHydraViewBuilder toBuilder() =>
      ApiGamesGetCollection200ResponseHydraViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiGamesGetCollection200ResponseHydraView &&
        atId == other.atId &&
        atType == other.atType &&
        hydraColonFirst == other.hydraColonFirst &&
        hydraColonLast == other.hydraColonLast &&
        hydraColonPrevious == other.hydraColonPrevious &&
        hydraColonNext == other.hydraColonNext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atId.hashCode);
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, hydraColonFirst.hashCode);
    _$hash = $jc(_$hash, hydraColonLast.hashCode);
    _$hash = $jc(_$hash, hydraColonPrevious.hashCode);
    _$hash = $jc(_$hash, hydraColonNext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiGamesGetCollection200ResponseHydraView')
          ..add('atId', atId)
          ..add('atType', atType)
          ..add('hydraColonFirst', hydraColonFirst)
          ..add('hydraColonLast', hydraColonLast)
          ..add('hydraColonPrevious', hydraColonPrevious)
          ..add('hydraColonNext', hydraColonNext))
        .toString();
  }
}

class ApiGamesGetCollection200ResponseHydraViewBuilder
    implements
        Builder<ApiGamesGetCollection200ResponseHydraView,
            ApiGamesGetCollection200ResponseHydraViewBuilder> {
  _$ApiGamesGetCollection200ResponseHydraView? _$v;

  String? _atId;
  String? get atId => _$this._atId;
  set atId(String? atId) => _$this._atId = atId;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  String? _hydraColonFirst;
  String? get hydraColonFirst => _$this._hydraColonFirst;
  set hydraColonFirst(String? hydraColonFirst) =>
      _$this._hydraColonFirst = hydraColonFirst;

  String? _hydraColonLast;
  String? get hydraColonLast => _$this._hydraColonLast;
  set hydraColonLast(String? hydraColonLast) =>
      _$this._hydraColonLast = hydraColonLast;

  String? _hydraColonPrevious;
  String? get hydraColonPrevious => _$this._hydraColonPrevious;
  set hydraColonPrevious(String? hydraColonPrevious) =>
      _$this._hydraColonPrevious = hydraColonPrevious;

  String? _hydraColonNext;
  String? get hydraColonNext => _$this._hydraColonNext;
  set hydraColonNext(String? hydraColonNext) =>
      _$this._hydraColonNext = hydraColonNext;

  ApiGamesGetCollection200ResponseHydraViewBuilder() {
    ApiGamesGetCollection200ResponseHydraView._defaults(this);
  }

  ApiGamesGetCollection200ResponseHydraViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atId = $v.atId;
      _atType = $v.atType;
      _hydraColonFirst = $v.hydraColonFirst;
      _hydraColonLast = $v.hydraColonLast;
      _hydraColonPrevious = $v.hydraColonPrevious;
      _hydraColonNext = $v.hydraColonNext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiGamesGetCollection200ResponseHydraView other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiGamesGetCollection200ResponseHydraView;
  }

  @override
  void update(
      void Function(ApiGamesGetCollection200ResponseHydraViewBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiGamesGetCollection200ResponseHydraView build() => _build();

  _$ApiGamesGetCollection200ResponseHydraView _build() {
    final _$result = _$v ??
        _$ApiGamesGetCollection200ResponseHydraView._(
            atId: atId,
            atType: atType,
            hydraColonFirst: hydraColonFirst,
            hydraColonLast: hydraColonLast,
            hydraColonPrevious: hydraColonPrevious,
            hydraColonNext: hydraColonNext);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
