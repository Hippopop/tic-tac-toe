//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token.g.dart';

/// RefreshToken
///
/// Properties:
/// * [refreshToken]
@BuiltValue()
abstract class RefreshToken
    implements Built<RefreshToken, RefreshTokenBuilder> {
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  RefreshToken._();

  factory RefreshToken([void updates(RefreshTokenBuilder b)]) = _$RefreshToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshToken> get serializer => _$RefreshTokenSerializer();
}

class _$RefreshTokenSerializer implements PrimitiveSerializer<RefreshToken> {
  @override
  final Iterable<Type> types = const [RefreshToken, _$RefreshToken];

  @override
  final String wireName = r'RefreshToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshToken object, {
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
    required RefreshTokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenBuilder();
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
