// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_jsonld_user_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserJsonldUserCreate extends UserJsonldUserCreate {
  @override
  final String? email;
  @override
  final String? plainPassword;
  @override
  final String? name;

  factory _$UserJsonldUserCreate(
          [void Function(UserJsonldUserCreateBuilder)? updates]) =>
      (UserJsonldUserCreateBuilder()..update(updates))._build();

  _$UserJsonldUserCreate._({this.email, this.plainPassword, this.name})
      : super._();

  @override
  UserJsonldUserCreate rebuild(
          void Function(UserJsonldUserCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserJsonldUserCreateBuilder toBuilder() =>
      UserJsonldUserCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserJsonldUserCreate &&
        email == other.email &&
        plainPassword == other.plainPassword &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, plainPassword.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserJsonldUserCreate')
          ..add('email', email)
          ..add('plainPassword', plainPassword)
          ..add('name', name))
        .toString();
  }
}

class UserJsonldUserCreateBuilder
    implements Builder<UserJsonldUserCreate, UserJsonldUserCreateBuilder> {
  _$UserJsonldUserCreate? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _plainPassword;
  String? get plainPassword => _$this._plainPassword;
  set plainPassword(String? plainPassword) =>
      _$this._plainPassword = plainPassword;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserJsonldUserCreateBuilder() {
    UserJsonldUserCreate._defaults(this);
  }

  UserJsonldUserCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _plainPassword = $v.plainPassword;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserJsonldUserCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserJsonldUserCreate;
  }

  @override
  void update(void Function(UserJsonldUserCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserJsonldUserCreate build() => _build();

  _$UserJsonldUserCreate _build() {
    final _$result = _$v ??
        _$UserJsonldUserCreate._(
            email: email, plainPassword: plainPassword, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
