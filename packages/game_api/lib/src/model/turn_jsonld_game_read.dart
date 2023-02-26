//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/game_jsonld_game_read_context.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'turn_jsonld_game_read.g.dart';

/// 
///
/// Properties:
/// * [atContext] 
/// * [atId] 
/// * [atType] 
/// * [player] 
/// * [x] 
/// * [y] 
/// * [isPlayer1] 
/// * [createdAt] 
/// * [highlight] 
@BuiltValue()
abstract class TurnJsonldGameRead implements Built<TurnJsonldGameRead, TurnJsonldGameReadBuilder> {
  @BuiltValueField(wireName: r'@context')
  GameJsonldGameReadContext? get atContext;

  @BuiltValueField(wireName: r'@id')
  String? get atId;

  @BuiltValueField(wireName: r'@type')
  String? get atType;

  @BuiltValueField(wireName: r'player')
  String? get player;

  @BuiltValueField(wireName: r'x')
  int? get x;

  @BuiltValueField(wireName: r'y')
  int? get y;

  @BuiltValueField(wireName: r'isPlayer1')
  bool? get isPlayer1;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'highlight')
  bool? get highlight;

  TurnJsonldGameRead._();

  factory TurnJsonldGameRead([void updates(TurnJsonldGameReadBuilder b)]) = _$TurnJsonldGameRead;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TurnJsonldGameReadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TurnJsonldGameRead> get serializer => _$TurnJsonldGameReadSerializer();
}

class _$TurnJsonldGameReadSerializer implements PrimitiveSerializer<TurnJsonldGameRead> {
  @override
  final Iterable<Type> types = const [TurnJsonldGameRead, _$TurnJsonldGameRead];

  @override
  final String wireName = r'TurnJsonldGameRead';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TurnJsonldGameRead object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.atContext != null) {
      yield r'@context';
      yield serializers.serialize(
        object.atContext,
        specifiedType: const FullType(GameJsonldGameReadContext),
      );
    }
    if (object.atId != null) {
      yield r'@id';
      yield serializers.serialize(
        object.atId,
        specifiedType: const FullType(String),
      );
    }
    if (object.atType != null) {
      yield r'@type';
      yield serializers.serialize(
        object.atType,
        specifiedType: const FullType(String),
      );
    }
    if (object.player != null) {
      yield r'player';
      yield serializers.serialize(
        object.player,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'x';
    yield object.x == null ? null : serializers.serialize(
      object.x,
      specifiedType: const FullType.nullable(int),
    );
    yield r'y';
    yield object.y == null ? null : serializers.serialize(
      object.y,
      specifiedType: const FullType.nullable(int),
    );
    if (object.isPlayer1 != null) {
      yield r'isPlayer1';
      yield serializers.serialize(
        object.isPlayer1,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.highlight != null) {
      yield r'highlight';
      yield serializers.serialize(
        object.highlight,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TurnJsonldGameRead object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TurnJsonldGameReadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GameJsonldGameReadContext),
          ) as GameJsonldGameReadContext;
          result.atContext.replace(valueDes);
          break;
        case r'@id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.atId = valueDes;
          break;
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.atType = valueDes;
          break;
        case r'player':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.player = valueDes;
          break;
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
        case r'isPlayer1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPlayer1 = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'highlight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.highlight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TurnJsonldGameRead deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TurnJsonldGameReadBuilder();
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

