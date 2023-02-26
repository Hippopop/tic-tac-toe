//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_games_get_collection200_response_hydra_view.g.dart';

/// ApiGamesGetCollection200ResponseHydraView
///
/// Properties:
/// * [atId]
/// * [atType]
/// * [hydraColonFirst]
/// * [hydraColonLast]
/// * [hydraColonPrevious]
/// * [hydraColonNext]
@BuiltValue()
abstract class ApiGamesGetCollection200ResponseHydraView
    implements
        Built<ApiGamesGetCollection200ResponseHydraView,
            ApiGamesGetCollection200ResponseHydraViewBuilder> {
  @BuiltValueField(wireName: r'@id')
  String? get atId;

  @BuiltValueField(wireName: r'@type')
  String? get atType;

  @BuiltValueField(wireName: r'hydra:first')
  String? get hydraColonFirst;

  @BuiltValueField(wireName: r'hydra:last')
  String? get hydraColonLast;

  @BuiltValueField(wireName: r'hydra:previous')
  String? get hydraColonPrevious;

  @BuiltValueField(wireName: r'hydra:next')
  String? get hydraColonNext;

  ApiGamesGetCollection200ResponseHydraView._();

  factory ApiGamesGetCollection200ResponseHydraView(
          [void updates(ApiGamesGetCollection200ResponseHydraViewBuilder b)]) =
      _$ApiGamesGetCollection200ResponseHydraView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiGamesGetCollection200ResponseHydraViewBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiGamesGetCollection200ResponseHydraView> get serializer =>
      _$ApiGamesGetCollection200ResponseHydraViewSerializer();
}

class _$ApiGamesGetCollection200ResponseHydraViewSerializer
    implements PrimitiveSerializer<ApiGamesGetCollection200ResponseHydraView> {
  @override
  final Iterable<Type> types = const [
    ApiGamesGetCollection200ResponseHydraView,
    _$ApiGamesGetCollection200ResponseHydraView
  ];

  @override
  final String wireName = r'ApiGamesGetCollection200ResponseHydraView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiGamesGetCollection200ResponseHydraView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.hydraColonFirst != null) {
      yield r'hydra:first';
      yield serializers.serialize(
        object.hydraColonFirst,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonLast != null) {
      yield r'hydra:last';
      yield serializers.serialize(
        object.hydraColonLast,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonPrevious != null) {
      yield r'hydra:previous';
      yield serializers.serialize(
        object.hydraColonPrevious,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonNext != null) {
      yield r'hydra:next';
      yield serializers.serialize(
        object.hydraColonNext,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiGamesGetCollection200ResponseHydraView object, {
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
    required ApiGamesGetCollection200ResponseHydraViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'hydra:first':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonFirst = valueDes;
          break;
        case r'hydra:last':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonLast = valueDes;
          break;
        case r'hydra:previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonPrevious = valueDes;
          break;
        case r'hydra:next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonNext = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiGamesGetCollection200ResponseHydraView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiGamesGetCollection200ResponseHydraViewBuilder();
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
