//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/turn_jsonld_game_read.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/game_jsonld_game_read_context.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_jsonld_game_read.g.dart';

/// 
///
/// Properties:
/// * [atContext] 
/// * [atId] 
/// * [atType] 
/// * [id] 
/// * [player1] 
/// * [player2] 
/// * [result] 
/// * [open] 
/// * [code] 
/// * [createdAt] 
/// * [finishedAt] 
/// * [turns] 
/// * [currentTurnPlayer] 
@BuiltValue()
abstract class GameJsonldGameRead implements Built<GameJsonldGameRead, GameJsonldGameReadBuilder> {
  @BuiltValueField(wireName: r'@context')
  GameJsonldGameReadContext? get atContext;

  @BuiltValueField(wireName: r'@id')
  String? get atId;

  @BuiltValueField(wireName: r'@type')
  String? get atType;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'player1')
  String? get player1;

  @BuiltValueField(wireName: r'player2')
  String? get player2;

  @BuiltValueField(wireName: r'result')
  GameJsonldGameReadResultEnum? get result;
  // enum resultEnum {  Unfinished,  Player 1,  Player 2,  Draw,  };

  @BuiltValueField(wireName: r'open')
  bool? get open;

  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'turns')
  BuiltList<TurnJsonldGameRead>? get turns;

  @BuiltValueField(wireName: r'currentTurnPlayer')
  String? get currentTurnPlayer;

  GameJsonldGameRead._();

  factory GameJsonldGameRead([void updates(GameJsonldGameReadBuilder b)]) = _$GameJsonldGameRead;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GameJsonldGameReadBuilder b) => b
      ..result = const GameJsonldGameReadResultEnum._('Unfinished')
      ..open = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<GameJsonldGameRead> get serializer => _$GameJsonldGameReadSerializer();
}

class _$GameJsonldGameReadSerializer implements PrimitiveSerializer<GameJsonldGameRead> {
  @override
  final Iterable<Type> types = const [GameJsonldGameRead, _$GameJsonldGameRead];

  @override
  final String wireName = r'GameJsonldGameRead';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GameJsonldGameRead object, {
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.player1 != null) {
      yield r'player1';
      yield serializers.serialize(
        object.player1,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'player2';
    yield object.player2 == null ? null : serializers.serialize(
      object.player2,
      specifiedType: const FullType.nullable(String),
    );
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(GameJsonldGameReadResultEnum),
      );
    }
    if (object.open != null) {
      yield r'open';
      yield serializers.serialize(
        object.open,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.turns != null) {
      yield r'turns';
      yield serializers.serialize(
        object.turns,
        specifiedType: const FullType(BuiltList, [FullType(TurnJsonldGameRead)]),
      );
    }
    if (object.currentTurnPlayer != null) {
      yield r'currentTurnPlayer';
      yield serializers.serialize(
        object.currentTurnPlayer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GameJsonldGameRead object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GameJsonldGameReadBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'player1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.player1 = valueDes;
          break;
        case r'player2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.player2 = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GameJsonldGameReadResultEnum),
          ) as GameJsonldGameReadResultEnum;
          result.result = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.open = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'turns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TurnJsonldGameRead)]),
          ) as BuiltList<TurnJsonldGameRead>;
          result.turns.replace(valueDes);
          break;
        case r'currentTurnPlayer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentTurnPlayer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GameJsonldGameRead deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GameJsonldGameReadBuilder();
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

class GameJsonldGameReadResultEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Unfinished')
  static const GameJsonldGameReadResultEnum unfinished = _$gameJsonldGameReadResultEnum_unfinished;
  @BuiltValueEnumConst(wireName: r'Player 1')
  static const GameJsonldGameReadResultEnum player1 = _$gameJsonldGameReadResultEnum_player1;
  @BuiltValueEnumConst(wireName: r'Player 2')
  static const GameJsonldGameReadResultEnum player2 = _$gameJsonldGameReadResultEnum_player2;
  @BuiltValueEnumConst(wireName: r'Draw')
  static const GameJsonldGameReadResultEnum draw = _$gameJsonldGameReadResultEnum_draw;

  static Serializer<GameJsonldGameReadResultEnum> get serializer => _$gameJsonldGameReadResultEnumSerializer;

  const GameJsonldGameReadResultEnum._(String name): super(name);

  static BuiltSet<GameJsonldGameReadResultEnum> get values => _$gameJsonldGameReadResultEnumValues;
  static GameJsonldGameReadResultEnum valueOf(String name) => _$gameJsonldGameReadResultEnumValueOf(name);
}

