//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_view.dart';
import 'package:openapi/src/model/user_jsonld_user_read.dart';
import 'package:openapi/src/model/api_games_get_collection200_response_hydra_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_users_get_collection200_response.g.dart';

/// ApiUsersGetCollection200Response
///
/// Properties:
/// * [hydraColonMember] 
/// * [hydraColonTotalItems] 
/// * [hydraColonView] 
/// * [hydraColonSearch] 
@BuiltValue()
abstract class ApiUsersGetCollection200Response implements Built<ApiUsersGetCollection200Response, ApiUsersGetCollection200ResponseBuilder> {
  @BuiltValueField(wireName: r'hydra:member')
  BuiltList<UserJsonldUserRead> get hydraColonMember;

  @BuiltValueField(wireName: r'hydra:totalItems')
  int? get hydraColonTotalItems;

  @BuiltValueField(wireName: r'hydra:view')
  ApiGamesGetCollection200ResponseHydraView? get hydraColonView;

  @BuiltValueField(wireName: r'hydra:search')
  ApiGamesGetCollection200ResponseHydraSearch? get hydraColonSearch;

  ApiUsersGetCollection200Response._();

  factory ApiUsersGetCollection200Response([void updates(ApiUsersGetCollection200ResponseBuilder b)]) = _$ApiUsersGetCollection200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiUsersGetCollection200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiUsersGetCollection200Response> get serializer => _$ApiUsersGetCollection200ResponseSerializer();
}

class _$ApiUsersGetCollection200ResponseSerializer implements PrimitiveSerializer<ApiUsersGetCollection200Response> {
  @override
  final Iterable<Type> types = const [ApiUsersGetCollection200Response, _$ApiUsersGetCollection200Response];

  @override
  final String wireName = r'ApiUsersGetCollection200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiUsersGetCollection200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hydra:member';
    yield serializers.serialize(
      object.hydraColonMember,
      specifiedType: const FullType(BuiltList, [FullType(UserJsonldUserRead)]),
    );
    if (object.hydraColonTotalItems != null) {
      yield r'hydra:totalItems';
      yield serializers.serialize(
        object.hydraColonTotalItems,
        specifiedType: const FullType(int),
      );
    }
    if (object.hydraColonView != null) {
      yield r'hydra:view';
      yield serializers.serialize(
        object.hydraColonView,
        specifiedType: const FullType(ApiGamesGetCollection200ResponseHydraView),
      );
    }
    if (object.hydraColonSearch != null) {
      yield r'hydra:search';
      yield serializers.serialize(
        object.hydraColonSearch,
        specifiedType: const FullType(ApiGamesGetCollection200ResponseHydraSearch),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiUsersGetCollection200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiUsersGetCollection200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hydra:member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserJsonldUserRead)]),
          ) as BuiltList<UserJsonldUserRead>;
          result.hydraColonMember.replace(valueDes);
          break;
        case r'hydra:totalItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hydraColonTotalItems = valueDes;
          break;
        case r'hydra:view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiGamesGetCollection200ResponseHydraView),
          ) as ApiGamesGetCollection200ResponseHydraView;
          result.hydraColonView.replace(valueDes);
          break;
        case r'hydra:search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiGamesGetCollection200ResponseHydraSearch),
          ) as ApiGamesGetCollection200ResponseHydraSearch;
          result.hydraColonSearch.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiUsersGetCollection200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiUsersGetCollection200ResponseBuilder();
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

