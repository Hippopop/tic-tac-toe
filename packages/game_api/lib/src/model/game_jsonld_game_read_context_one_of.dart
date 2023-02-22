//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_jsonld_game_read_context_one_of.g.dart';

/// GameJsonldGameReadContextOneOf
///
/// Properties:
/// * [atVocab] 
/// * [hydra] 
@BuiltValue()
abstract class GameJsonldGameReadContextOneOf implements Built<GameJsonldGameReadContextOneOf, GameJsonldGameReadContextOneOfBuilder> {
  @BuiltValueField(wireName: r'@vocab')
  String get atVocab;

  @BuiltValueField(wireName: r'hydra')
  GameJsonldGameReadContextOneOfHydraEnum get hydra;
  // enum hydraEnum {  http://www.w3.org/ns/hydra/core#,  };

  GameJsonldGameReadContextOneOf._();

  factory GameJsonldGameReadContextOneOf([void updates(GameJsonldGameReadContextOneOfBuilder b)]) = _$GameJsonldGameReadContextOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GameJsonldGameReadContextOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GameJsonldGameReadContextOneOf> get serializer => _$GameJsonldGameReadContextOneOfSerializer();
}

class _$GameJsonldGameReadContextOneOfSerializer implements PrimitiveSerializer<GameJsonldGameReadContextOneOf> {
  @override
  final Iterable<Type> types = const [GameJsonldGameReadContextOneOf, _$GameJsonldGameReadContextOneOf];

  @override
  final String wireName = r'GameJsonldGameReadContextOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GameJsonldGameReadContextOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@vocab';
    yield serializers.serialize(
      object.atVocab,
      specifiedType: const FullType(String),
    );
    yield r'hydra';
    yield serializers.serialize(
      object.hydra,
      specifiedType: const FullType(GameJsonldGameReadContextOneOfHydraEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GameJsonldGameReadContextOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GameJsonldGameReadContextOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@vocab':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.atVocab = valueDes;
          break;
        case r'hydra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GameJsonldGameReadContextOneOfHydraEnum),
          ) as GameJsonldGameReadContextOneOfHydraEnum;
          result.hydra = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GameJsonldGameReadContextOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GameJsonldGameReadContextOneOfBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class GameJsonldGameReadContextOneOfHydraEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'http://www.w3.org/ns/hydra/core#')
  static const GameJsonldGameReadContextOneOfHydraEnum httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash = _$gameJsonldGameReadContextOneOfHydraEnum_httpColonSlashSlashWwwPeriodW3PeriodOrgSlashNsSlashHydraSlashCoreHash;

  static Serializer<GameJsonldGameReadContextOneOfHydraEnum> get serializer => _$gameJsonldGameReadContextOneOfHydraEnumSerializer;

  const GameJsonldGameReadContextOneOfHydraEnum._(String name): super(name);

  static BuiltSet<GameJsonldGameReadContextOneOfHydraEnum> get values => _$gameJsonldGameReadContextOneOfHydraEnumValues;
  static GameJsonldGameReadContextOneOfHydraEnum valueOf(String name) => _$gameJsonldGameReadContextOneOfHydraEnumValueOf(name);
}

