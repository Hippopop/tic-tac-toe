// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_games_get_collection200_response_hydra_search_hydra_mapping_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner
    extends ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner {
  @override
  final String? atType;
  @override
  final String? variable;
  @override
  final String? property;
  @override
  final bool? required_;

  factory _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner(
          [void Function(
                  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder)?
              updates]) =>
      (ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder()
            ..update(updates))
          ._build();

  _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner._(
      {this.atType, this.variable, this.property, this.required_})
      : super._();

  @override
  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner rebuild(
          void Function(
                  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder
      toBuilder() =>
          ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner &&
        atType == other.atType &&
        variable == other.variable &&
        property == other.property &&
        required_ == other.required_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, variable.hashCode);
    _$hash = $jc(_$hash, property.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner')
          ..add('atType', atType)
          ..add('variable', variable)
          ..add('property', property)
          ..add('required_', required_))
        .toString();
  }
}

class ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder
    implements
        Builder<ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner,
            ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder> {
  _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner? _$v;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  String? _variable;
  String? get variable => _$this._variable;
  set variable(String? variable) => _$this._variable = variable;

  String? _property;
  String? get property => _$this._property;
  set property(String? property) => _$this._property = property;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder() {
    ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner._defaults(
        this);
  }

  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _variable = $v.variable;
      _property = $v.property;
      _required_ = $v.required_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner;
  }

  @override
  void update(
      void Function(
              ApiGamesGetCollection200ResponseHydraSearchHydraMappingInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner build() =>
      _build();

  _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner _build() {
    final _$result = _$v ??
        _$ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner._(
            atType: atType,
            variable: variable,
            property: property,
            required_: required_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
