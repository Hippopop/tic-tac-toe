//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'turn_jsonld_turn_create.g.dart';

///
///
/// Properties:
/// * [x]
/// * [y]
/// * [game]
@BuiltValue()
abstract class TurnJsonldTurnCreate
    implements Built<TurnJsonldTurnCreate, TurnJsonldTurnCreateBuilder> {
  @BuiltValueField(wireName: r'x')
  int? get x;

  @BuiltValueField(wireName: r'y')
  int? get y;

  @BuiltValueField(wireName: r'game')
  String? get game;

  TurnJsonldTurnCreate._();

  factory TurnJsonldTurnCreate([void updates(TurnJsonldTurnCreateBuilder b)]) =
      _$TurnJsonldTurnCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TurnJsonldTurnCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TurnJsonldTurnCreate> get serializer =>
      _$TurnJsonldTurnCreateSerializer();
}

class _$TurnJsonldTurnCreateSerializer
    implements PrimitiveSerializer<TurnJsonldTurnCreate> {
  @override
  final Iterable<Type> types = const [
    TurnJsonldTurnCreate,
    _$TurnJsonldTurnCreate
  ];

  @override
  final String wireName = r'TurnJsonldTurnCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TurnJsonldTurnCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'x';
    yield object.x == null
        ? null
        : serializers.serialize(
            object.x,
            specifiedType: const FullType.nullable(int),
          );
    yield r'y';
    yield object.y == null
        ? null
        : serializers.serialize(
            object.y,
            specifiedType: const FullType.nullable(int),
          );
    yield r'game';
    yield object.game == null
        ? null
        : serializers.serialize(
            object.game,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    TurnJsonldTurnCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TurnJsonldTurnCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.y = valueDes;
          break;
        case r'game':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.game = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TurnJsonldTurnCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TurnJsonldTurnCreateBuilder();
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
