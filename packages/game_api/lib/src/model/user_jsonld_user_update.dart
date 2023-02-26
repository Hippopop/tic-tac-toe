//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_jsonld_user_update.g.dart';

///
///
/// Properties:
/// * [plainPassword]
/// * [name]
@BuiltValue()
abstract class UserJsonldUserUpdate
    implements Built<UserJsonldUserUpdate, UserJsonldUserUpdateBuilder> {
  @BuiltValueField(wireName: r'plainPassword')
  String? get plainPassword;

  @BuiltValueField(wireName: r'name')
  String? get name;

  UserJsonldUserUpdate._();

  factory UserJsonldUserUpdate([void updates(UserJsonldUserUpdateBuilder b)]) =
      _$UserJsonldUserUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserJsonldUserUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserJsonldUserUpdate> get serializer =>
      _$UserJsonldUserUpdateSerializer();
}

class _$UserJsonldUserUpdateSerializer
    implements PrimitiveSerializer<UserJsonldUserUpdate> {
  @override
  final Iterable<Type> types = const [
    UserJsonldUserUpdate,
    _$UserJsonldUserUpdate
  ];

  @override
  final String wireName = r'UserJsonldUserUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserJsonldUserUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UserJsonldUserUpdate object, {
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
    required UserJsonldUserUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UserJsonldUserUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserJsonldUserUpdateBuilder();
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
