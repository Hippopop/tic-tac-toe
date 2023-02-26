// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshToken extends RefreshToken {
  @override
  final String? refreshToken;

  factory _$RefreshToken([void Function(RefreshTokenBuilder)? updates]) =>
      (RefreshTokenBuilder()..update(updates))._build();

  _$RefreshToken._({this.refreshToken}) : super._();

  @override
  RefreshToken rebuild(void Function(RefreshTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenBuilder toBuilder() => RefreshTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshToken && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshToken')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RefreshTokenBuilder
    implements Builder<RefreshToken, RefreshTokenBuilder> {
  _$RefreshToken? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshTokenBuilder() {
    RefreshToken._defaults(this);
  }

  RefreshTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshToken;
  }

  @override
  void update(void Function(RefreshTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshToken build() => _build();

  _$RefreshToken _build() {
    final _$result = _$v ?? _$RefreshToken._(refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
