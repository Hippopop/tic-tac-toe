//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_search_hydra_mapping_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_games_get_collection200_response_hydra_search.g.dart';

/// ApiGamesGetCollection200ResponseHydraSearch
///
/// Properties:
/// * [atType]
/// * [hydraColonTemplate]
/// * [hydraColonVariableRepresentation]
/// * [hydraColonMapping]
@BuiltValue()
abstract class ApiGamesGetCollection200ResponseHydraSearch
    implements
        Built<ApiGamesGetCollection200ResponseHydraSearch,
            ApiGamesGetCollection200ResponseHydraSearchBuilder> {
  @BuiltValueField(wireName: r'@type')
  String? get atType;

  @BuiltValueField(wireName: r'hydra:template')
  String? get hydraColonTemplate;

  @BuiltValueField(wireName: r'hydra:variableRepresentation')
  String? get hydraColonVariableRepresentation;

  @BuiltValueField(wireName: r'hydra:mapping')
  BuiltList<ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>?
      get hydraColonMapping;

  ApiGamesGetCollection200ResponseHydraSearch._();

  factory ApiGamesGetCollection200ResponseHydraSearch(
          [void updates(
              ApiGamesGetCollection200ResponseHydraSearchBuilder b)]) =
      _$ApiGamesGetCollection200ResponseHydraSearch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiGamesGetCollection200ResponseHydraSearchBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiGamesGetCollection200ResponseHydraSearch>
      get serializer =>
          _$ApiGamesGetCollection200ResponseHydraSearchSerializer();
}

class _$ApiGamesGetCollection200ResponseHydraSearchSerializer
    implements
        PrimitiveSerializer<ApiGamesGetCollection200ResponseHydraSearch> {
  @override
  final Iterable<Type> types = const [
    ApiGamesGetCollection200ResponseHydraSearch,
    _$ApiGamesGetCollection200ResponseHydraSearch
  ];

  @override
  final String wireName = r'ApiGamesGetCollection200ResponseHydraSearch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiGamesGetCollection200ResponseHydraSearch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.atType != null) {
      yield r'@type';
      yield serializers.serialize(
        object.atType,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonTemplate != null) {
      yield r'hydra:template';
      yield serializers.serialize(
        object.hydraColonTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonVariableRepresentation != null) {
      yield r'hydra:variableRepresentation';
      yield serializers.serialize(
        object.hydraColonVariableRepresentation,
        specifiedType: const FullType(String),
      );
    }
    if (object.hydraColonMapping != null) {
      yield r'hydra:mapping';
      yield serializers.serialize(
        object.hydraColonMapping,
        specifiedType: const FullType(BuiltList, [
          FullType(ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiGamesGetCollection200ResponseHydraSearch object, {
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
    required ApiGamesGetCollection200ResponseHydraSearchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.atType = valueDes;
          break;
        case r'hydra:template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonTemplate = valueDes;
          break;
        case r'hydra:variableRepresentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hydraColonVariableRepresentation = valueDes;
          break;
        case r'hydra:mapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(
                  ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner)
            ]),
          ) as BuiltList<
              ApiGamesGetCollection200ResponseHydraSearchHydraMappingInner>;
          result.hydraColonMapping.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiGamesGetCollection200ResponseHydraSearch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiGamesGetCollection200ResponseHydraSearchBuilder();
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
