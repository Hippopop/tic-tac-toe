//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_jsonld_user_create.g.dart';

/// 
///
/// Properties:
/// * [email] 
/// * [plainPassword] 
/// * [name] 
@BuiltValue()
abstract class UserJsonldUserCreate implements Built<UserJsonldUserCreate, UserJsonldUserCreateBuilder> {
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'plainPassword')
  String? get plainPassword;

  @BuiltValueField(wireName: r'name')
  String? get name;

  UserJsonldUserCreate._();

  factory UserJsonldUserCreate([void updates(UserJsonldUserCreateBuilder b)]) = _$UserJsonldUserCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserJsonldUserCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserJsonldUserCreate> get serializer => _$UserJsonldUserCreateSerializer();
}

class _$UserJsonldUserCreateSerializer implements PrimitiveSerializer<UserJsonldUserCreate> {
  @override
  final Iterable<Type> types = const [UserJsonldUserCreate, _$UserJsonldUserCreate];

  @override
  final String wireName = r'UserJsonldUserCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserJsonldUserCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.plainPassword != null) {
      yield r'plainPassword';
      yield serializers.serialize(
        object.plainPassword,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserJsonldUserCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserJsonldUserCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'plainPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plainPassword = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserJsonldUserCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserJsonldUserCreateBuilder();
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

