// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_jsonld_game_read_context_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GameJsonldGameReadContextOneOfHydraEnum
    _$gameJsonldGameReadContextOneOfHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash =
    const GameJsonldGameReadContextOneOfHydraEnum._(
        'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash');

GameJsonldGameReadContextOneOfHydraEnum
    _$gameJsonldGameReadContextOneOfHydraEnumValueOf(String name) {
  switch (name) {
    case 'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash':
      return _$gameJsonldGameReadContextOneOfHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GameJsonldGameReadContextOneOfHydraEnum>
    _$gameJsonldGameReadContextOneOfHydraEnumValues =
    new BuiltSet<GameJsonldGameReadContextOneOfHydraEnum>(const <
        GameJsonldGameReadContextOneOfHydraEnum>[
  _$gameJsonldGameReadContextOneOfHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash,
]);

Serializer<GameJsonldGameReadContextOneOfHydraEnum>
    _$gameJsonldGameReadContextOneOfHydraEnumSerializer =
    new _$GameJsonldGameReadContextOneOfHydraEnumSerializer();

class _$GameJsonldGameReadContextOneOfHydraEnumSerializer
    implements PrimitiveSerializer<GameJsonldGameReadContextOneOfHydraEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash':
        'http://www.w3.org/ns/hydra/core#',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'http://www.w3.org/ns/hydra/core#':
        'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GameJsonldGameReadContextOneOfHydraEnum
  ];
  @override
  final String wireName = 'GameJsonldGameReadContextOneOfHydraEnum';

  @override
  Object serialize(Serializers serializers,
          GameJsonldGameReadContextOneOfHydraEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GameJsonldGameReadContextOneOfHydraEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GameJsonldGameReadContextOneOfHydraEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GameJsonldGameReadContextOneOf extends GameJsonldGameReadContextOneOf {
  @override
  final String atVocab;
  @override
  final GameJsonldGameReadContextOneOfHydraEnum hydra;

  factory _$GameJsonldGameReadContextOneOf(
          [void Function(GameJsonldGameReadContextOneOfBuilder)? updates]) =>
      (new GameJsonldGameReadContextOneOfBuilder()..update(updates))._build();

  _$GameJsonldGameReadContextOneOf._(
      {required this.atVocab, required this.hydra})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        atVocab, r'GameJsonldGameReadContextOneOf', 'atVocab');
    BuiltValueNullFieldError.checkNotNull(
        hydra, r'GameJsonldGameReadContextOneOf', 'hydra');
  }

  @override
  GameJsonldGameReadContextOneOf rebuild(
          void Function(GameJsonldGameReadContextOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameJsonldGameReadContextOneOfBuilder toBuilder() =>
      new GameJsonldGameReadContextOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameJsonldGameReadContextOneOf &&
        atVocab == other.atVocab &&
        hydra == other.hydra;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atVocab.hashCode);
    _$hash = $jc(_$hash, hydra.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameJsonldGameReadContextOneOf')
          ..add('atVocab', atVocab)
          ..add('hydra', hydra))
        .toString();
  }
}

class GameJsonldGameReadContextOneOfBuilder
    implements
        Builder<GameJsonldGameReadContextOneOf,
            GameJsonldGameReadContextOneOfBuilder> {
  _$GameJsonldGameReadContextOneOf? _$v;

  String? _atVocab;
  String? get atVocab => _$this._atVocab;
  set atVocab(String? atVocab) => _$this._atVocab = atVocab;

  GameJsonldGameReadContextOneOfHydraEnum? _hydra;
  GameJsonldGameReadContextOneOfHydraEnum? get hydra => _$this._hydra;
  set hydra(GameJsonldGameReadContextOneOfHydraEnum? hydra) =>
      _$this._hydra = hydra;

  GameJsonldGameReadContextOneOfBuilder() {
    GameJsonldGameReadContextOneOf._defaults(this);
  }

  GameJsonldGameReadContextOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atVocab = $v.atVocab;
      _hydra = $v.hydra;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameJsonldGameReadContextOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameJsonldGameReadContextOneOf;
  }

  @override
  void update(void Function(GameJsonldGameReadContextOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameJsonldGameReadContextOneOf build() => _build();

  _$GameJsonldGameReadContextOneOf _build() {
    final _$result = _$v ??
        new _$GameJsonldGameReadContextOneOf._(
            atVocab: BuiltValueNullFieldError.checkNotNull(
                atVocab, r'GameJsonldGameReadContextOneOf', 'atVocab'),
            hydra: BuiltValueNullFieldError.checkNotNull(
                hydra, r'GameJsonldGameReadContextOneOf', 'hydra'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
