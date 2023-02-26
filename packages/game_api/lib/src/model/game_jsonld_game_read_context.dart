//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/game_jsonld_game_read_context_one_of.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'game_jsonld_game_read_context.g.dart';

/// GameJsonldGameReadContext
///
/// Properties:
/// * [atVocab] 
/// * [hydra] 
@BuiltValue()
abstract class GameJsonldGameReadContext implements Built<GameJsonldGameReadContext, GameJsonldGameReadContextBuilder> {
  /// One Of [GameJsonldGameReadContextOneOf], [String]
  OneOf get oneOf;

  GameJsonldGameReadContext._();

  factory GameJsonldGameReadContext([void updates(GameJsonldGameReadContextBuilder b)]) = _$GameJsonldGameReadContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GameJsonldGameReadContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GameJsonldGameReadContext> get serializer => _$GameJsonldGameReadContextSerializer();
}

class _$GameJsonldGameReadContextSerializer implements PrimitiveSerializer<GameJsonldGameReadContext> {
  @override
  final Iterable<Type> types = const [GameJsonldGameReadContext, _$GameJsonldGameReadContext];

  @override
  final String wireName = r'GameJsonldGameReadContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GameJsonldGameReadContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    GameJsonldGameReadContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  GameJsonldGameReadContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GameJsonldGameReadContextBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(GameJsonldGameReadContextOneOf), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class GameJsonldGameReadContextHydraEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'http://www.w3.org/ns/hydra/core#')
  static const GameJsonldGameReadContextHydraEnum httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash = _$gameJsonldGameReadContextHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash;

  static Serializer<GameJsonldGameReadContextHydraEnum> get serializer => _$gameJsonldGameReadContextHydraEnumSerializer;

  const GameJsonldGameReadContextHydraEnum._(String name): super(name);

  static BuiltSet<GameJsonldGameReadContextHydraEnum> get values => _$gameJsonldGameReadContextHydraEnumValues;
  static GameJsonldGameReadContextHydraEnum valueOf(String name) => _$gameJsonldGameReadContextHydraEnumValueOf(name);
}

