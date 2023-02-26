// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_jsonld_game_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GameJsonldGameCreate extends GameJsonldGameCreate {
  @override
  final String? player2;

  factory _$GameJsonldGameCreate(
          [void Function(GameJsonldGameCreateBuilder)? updates]) =>
      (GameJsonldGameCreateBuilder()..update(updates))._build();

  _$GameJsonldGameCreate._({this.player2}) : super._();

  @override
  GameJsonldGameCreate rebuild(
          void Function(GameJsonldGameCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameJsonldGameCreateBuilder toBuilder() =>
      GameJsonldGameCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameJsonldGameCreate && player2 == other.player2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, player2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameJsonldGameCreate')
          ..add('player2', player2))
        .toString();
  }
}

class GameJsonldGameCreateBuilder
    implements Builder<GameJsonldGameCreate, GameJsonldGameCreateBuilder> {
  _$GameJsonldGameCreate? _$v;

  String? _player2;
  String? get player2 => _$this._player2;
  set player2(String? player2) => _$this._player2 = player2;

  GameJsonldGameCreateBuilder() {
    GameJsonldGameCreate._defaults(this);
  }

  GameJsonldGameCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _player2 = $v.player2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameJsonldGameCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameJsonldGameCreate;
  }

  @override
  void update(void Function(GameJsonldGameCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameJsonldGameCreate build() => _build();

  _$GameJsonldGameCreate _build() {
    final _$result = _$v ?? _$GameJsonldGameCreate._(player2: player2);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
