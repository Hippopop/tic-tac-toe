// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_jsonld_user_read.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserJsonldUserRead extends UserJsonldUserRead {
  @override
  final GameJsonldGameReadContext? atContext;
  @override
  final String? atId;
  @override
  final String? atType;
  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? name;

  factory _$UserJsonldUserRead(
          [void Function(UserJsonldUserReadBuilder)? updates]) =>
      (UserJsonldUserReadBuilder()..update(updates))._build();

  _$UserJsonldUserRead._(
      {this.atContext, this.atId, this.atType, this.id, this.email, this.name})
      : super._();

  @override
  UserJsonldUserRead rebuild(
          void Function(UserJsonldUserReadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserJsonldUserReadBuilder toBuilder() =>
      UserJsonldUserReadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserJsonldUserRead &&
        atContext == other.atContext &&
        atId == other.atId &&
        atType == other.atType &&
        id == other.id &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atContext.hashCode);
    _$hash = $jc(_$hash, atId.hashCode);
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserJsonldUserRead')
          ..add('atContext', atContext)
          ..add('atId', atId)
          ..add('atType', atType)
          ..add('id', id)
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class UserJsonldUserReadBuilder
    implements Builder<UserJsonldUserRead, UserJsonldUserReadBuilder> {
  _$UserJsonldUserRead? _$v;

  GameJsonldGameReadContextBuilder? _atContext;
  GameJsonldGameReadContextBuilder get atContext =>
      _$this._atContext ??= GameJsonldGameReadContextBuilder();
  set atContext(GameJsonldGameReadContextBuilder? atContext) =>
      _$this._atContext = atContext;

  String? _atId;
  String? get atId => _$this._atId;
  set atId(String? atId) => _$this._atId = atId;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserJsonldUserReadBuilder() {
    UserJsonldUserRead._defaults(this);
  }

  UserJsonldUserReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atContext = $v.atContext?.toBuilder();
      _atId = $v.atId;
      _atType = $v.atType;
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserJsonldUserRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserJsonldUserRead;
  }

  @override
  void update(void Function(UserJsonldUserReadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserJsonldUserRead build() => _build();

  _$UserJsonldUserRead _build() {
    _$UserJsonldUserRead _$result;
    try {
      _$result = _$v ??
          _$UserJsonldUserRead._(
              atContext: _atContext?.build(),
              atId: atId,
              atType: atType,
              id: id,
              email: email,
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atContext';
        _atContext?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserJsonldUserRead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
