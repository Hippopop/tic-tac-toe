// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_jsonld_game_read_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GameJsonldGameReadContextHydraEnum
    _$gameJsonldGameReadContextHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash =
    const GameJsonldGameReadContextHydraEnum._(
        'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash');

GameJsonldGameReadContextHydraEnum _$gameJsonldGameReadContextHydraEnumValueOf(
    String name) {
  switch (name) {
    case 'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash':
      return _$gameJsonldGameReadContextHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GameJsonldGameReadContextHydraEnum>
    _$gameJsonldGameReadContextHydraEnumValues =
    new BuiltSet<GameJsonldGameReadContextHydraEnum>(const <
        GameJsonldGameReadContextHydraEnum>[
  _$gameJsonldGameReadContextHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash,
]);

Serializer<GameJsonldGameReadContextHydraEnum>
    _$gameJsonldGameReadContextHydraEnumSerializer =
    new _$GameJsonldGameReadContextHydraEnumSerializer();

class _$GameJsonldGameReadContextHydraEnumSerializer
    implements PrimitiveSerializer<GameJsonldGameReadContextHydraEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash':
        'http://www.w3.org/ns/hydra/core#',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'http://www.w3.org/ns/hydra/core#':
        'httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash',
  };

  @override
  final Iterable<Type> types = const <Type>[GameJsonldGameReadContextHydraEnum];
  @override
  final String wireName = 'GameJsonldGameReadContextHydraEnum';

  @override
  Object serialize(
          Serializers serializers, GameJsonldGameReadContextHydraEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GameJsonldGameReadContextHydraEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GameJsonldGameReadContextHydraEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GameJsonldGameReadContext extends GameJsonldGameReadContext {
  @override
  final OneOf oneOf;

  factory _$GameJsonldGameReadContext(
          [void Function(GameJsonldGameReadContextBuilder)? updates]) =>
      (new GameJsonldGameReadContextBuilder()..update(updates))._build();

  _$GameJsonldGameReadContext._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'GameJsonldGameReadContext', 'oneOf');
  }

  @override
  GameJsonldGameReadContext rebuild(
          void Function(GameJsonldGameReadContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameJsonldGameReadContextBuilder toBuilder() =>
      new GameJsonldGameReadContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameJsonldGameReadContext && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameJsonldGameReadContext')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GameJsonldGameReadContextBuilder
    implements
        Builder<GameJsonldGameReadContext, GameJsonldGameReadContextBuilder> {
  _$GameJsonldGameReadContext? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GameJsonldGameReadContextBuilder() {
    GameJsonldGameReadContext._defaults(this);
  }

  GameJsonldGameReadContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameJsonldGameReadContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameJsonldGameReadContext;
  }

  @override
  void update(void Function(GameJsonldGameReadContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameJsonldGameReadContext build() => _build();

  _$GameJsonldGameReadContext _build() {
    final _$result = _$v ??
        new _$GameJsonldGameReadContext._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'GameJsonldGameReadContext', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
