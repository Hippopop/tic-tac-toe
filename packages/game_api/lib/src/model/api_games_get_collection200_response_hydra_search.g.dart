// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_games_get_collection200_response_hydra_search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiGamesGetCollection200ResponseHydraSearch
    extends ApiGamesGetCollection200ResponseHydraSearch {
  @override
  final String? atType;
  @override
  final String? hydraColonTemplate;
  @override
  final String? hydraColonVariableRepresentation;
  @override
  final BuiltList<ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>?
      hydraColonMapping;

  factory _$ApiGamesGetCollection200ResponseHydraSearch(
          [void Function(ApiGamesGetCollection200ResponseHydraSearchBuilder)?
              updates]) =>
      (ApiGamesGetCollection200ResponseHydraSearchBuilder()..update(updates))
          ._build();

  _$ApiGamesGetCollection200ResponseHydraSearch._(
      {this.atType,
      this.hydraColonTemplate,
      this.hydraColonVariableRepresentation,
      this.hydraColonMapping})
      : super._();

  @override
  ApiGamesGetCollection200ResponseHydraSearch rebuild(
          void Function(ApiGamesGetCollection200ResponseHydraSearchBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiGamesGetCollection200ResponseHydraSearchBuilder toBuilder() =>
      ApiGamesGetCollection200ResponseHydraSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiGamesGetCollection200ResponseHydraSearch &&
        atType == other.atType &&
        hydraColonTemplate == other.hydraColonTemplate &&
        hydraColonVariableRepresentation ==
            other.hydraColonVariableRepresentation &&
        hydraColonMapping == other.hydraColonMapping;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, hydraColonTemplate.hashCode);
    _$hash = $jc(_$hash, hydraColonVariableRepresentation.hashCode);
    _$hash = $jc(_$hash, hydraColonMapping.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiGamesGetCollection200ResponseHydraSearch')
          ..add('atType', atType)
          ..add('hydraColonTemplate', hydraColonTemplate)
          ..add('hydraColonVariableRepresentation',
              hydraColonVariableRepresentation)
          ..add('hydraColonMapping', hydraColonMapping))
        .toString();
  }
}

class ApiGamesGetCollection200ResponseHydraSearchBuilder
    implements
        Builder<ApiGamesGetCollection200ResponseHydraSearch,
            ApiGamesGetCollection200ResponseHydraSearchBuilder> {
  _$ApiGamesGetCollection200ResponseHydraSearch? _$v;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  String? _hydraColonTemplate;
  String? get hydraColonTemplate => _$this._hydraColonTemplate;
  set hydraColonTemplate(String? hydraColonTemplate) =>
      _$this._hydraColonTemplate = hydraColonTemplate;

  String? _hydraColonVariableRepresentation;
  String? get hydraColonVariableRepresentation =>
      _$this._hydraColonVariableRepresentation;
  set hydraColonVariableRepresentation(
          String? hydraColonVariableRepresentation) =>
      _$this._hydraColonVariableRepresentation =
          hydraColonVariableRepresentation;

  ListBuilder<ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>?
      _hydraColonMapping;
  ListBuilder<ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>
      get hydraColonMapping => _$this._hydraColonMapping ??= ListBuilder<
          ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>();
  set hydraColonMapping(
          ListBuilder<
                  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>?
              hydraColonMapping) =>
      _$this._hydraColonMapping = hydraColonMapping;

  ApiGamesGetCollection200ResponseHydraSearchBuilder() {
    ApiGamesGetCollection200ResponseHydraSearch._defaults(this);
  }

  ApiGamesGetCollection200ResponseHydraSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _hydraColonTemplate = $v.hydraColonTemplate;
      _hydraColonVariableRepresentation = $v.hydraColonVariableRepresentation;
      _hydraColonMapping = $v.hydraColonMapping?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiGamesGetCollection200ResponseHydraSearch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiGamesGetCollection200ResponseHydraSearch;
  }

  @override
  void update(
      void Function(ApiGamesGetCollection200ResponseHydraSearchBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiGamesGetCollection200ResponseHydraSearch build() => _build();

  _$ApiGamesGetCollection200ResponseHydraSearch _build() {
    _$ApiGamesGetCollection200ResponseHydraSearch _$result;
    try {
      _$result = _$v ??
          _$ApiGamesGetCollection200ResponseHydraSearch._(
              atType: atType,
              hydraColonTemplate: hydraColonTemplate,
              hydraColonVariableRepresentation:
                  hydraColonVariableRepresentation,
              hydraColonMapping: _hydraColonMapping?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hydraColonMapping';
        _hydraColonMapping?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiGamesGetCollection200ResponseHydraSearch',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
