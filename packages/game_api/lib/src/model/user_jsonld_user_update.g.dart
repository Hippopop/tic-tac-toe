// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_jsonld_user_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserJsonldUserUpdate extends UserJsonldUserUpdate {
  @override
  final String? plainPassword;
  @override
  final String? name;

  factory _$UserJsonldUserUpdate(
          [void Function(UserJsonldUserUpdateBuilder)? updates]) =>
      (UserJsonldUserUpdateBuilder()..update(updates))._build();

  _$UserJsonldUserUpdate._({this.plainPassword, this.name}) : super._();

  @override
  UserJsonldUserUpdate rebuild(
          void Function(UserJsonldUserUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserJsonldUserUpdateBuilder toBuilder() =>
      UserJsonldUserUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserJsonldUserUpdate &&
        plainPassword == other.plainPassword &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plainPassword.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserJsonldUserUpdate')
          ..add('plainPassword', plainPassword)
          ..add('name', name))
        .toString();
  }
}

class UserJsonldUserUpdateBuilder
    implements Builder<UserJsonldUserUpdate, UserJsonldUserUpdateBuilder> {
  _$UserJsonldUserUpdate? _$v;

  String? _plainPassword;
  String? get plainPassword => _$this._plainPassword;
  set plainPassword(String? plainPassword) =>
      _$this._plainPassword = plainPassword;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserJsonldUserUpdateBuilder() {
    UserJsonldUserUpdate._defaults(this);
  }

  UserJsonldUserUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plainPassword = $v.plainPassword;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserJsonldUserUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserJsonldUserUpdate;
  }

  @override
  void update(void Function(UserJsonldUserUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserJsonldUserUpdate build() => _build();

  _$UserJsonldUserUpdate _build() {
    final _$result = _$v ??
        _$UserJsonldUserUpdate._(plainPassword: plainPassword, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
