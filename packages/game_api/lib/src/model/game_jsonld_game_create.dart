//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_jsonld_game_create.g.dart';

/// 
///
/// Properties:
/// * [player2] 
@BuiltValue()
abstract class GameJsonldGameCreate implements Built<GameJsonldGameCreate, GameJsonldGameCreateBuilder> {
  @BuiltValueField(wireName: r'player2')
  String? get player2;

  GameJsonldGameCreate._();

  factory GameJsonldGameCreate([void updates(GameJsonldGameCreateBuilder b)]) = _$GameJsonldGameCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GameJsonldGameCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GameJsonldGameCreate> get serializer => _$GameJsonldGameCreateSerializer();
}

class _$GameJsonldGameCreateSerializer implements PrimitiveSerializer<GameJsonldGameCreate> {
  @override
  final Iterable<Type> types = const [GameJsonldGameCreate, _$GameJsonldGameCreate];

  @override
  final String wireName = r'GameJsonldGameCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GameJsonldGameCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'player2';
    yield object.player2 == null ? null : serializers.serialize(
      object.player2,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GameJsonldGameCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GameJsonldGameCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'player2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.player2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GameJsonldGameCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GameJsonldGameCreateBuilder();
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

