// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turn_jsonld_turn_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TurnJsonldTurnCreate extends TurnJsonldTurnCreate {
  @override
  final int? x;
  @override
  final int? y;
  @override
  final String? game;

  factory _$TurnJsonldTurnCreate(
          [void Function(TurnJsonldTurnCreateBuilder)? updates]) =>
      (new TurnJsonldTurnCreateBuilder()..update(updates))._build();

  _$TurnJsonldTurnCreate._({this.x, this.y, this.game}) : super._();

  @override
  TurnJsonldTurnCreate rebuild(
          void Function(TurnJsonldTurnCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TurnJsonldTurnCreateBuilder toBuilder() =>
      new TurnJsonldTurnCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TurnJsonldTurnCreate &&
        x == other.x &&
        y == other.y &&
        game == other.game;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, game.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TurnJsonldTurnCreate')
          ..add('x', x)
          ..add('y', y)
          ..add('game', game))
        .toString();
  }
}

class TurnJsonldTurnCreateBuilder
    implements Builder<TurnJsonldTurnCreate, TurnJsonldTurnCreateBuilder> {
  _$TurnJsonldTurnCreate? _$v;

  int? _x;
  int? get x => _$this._x;
  set x(int? x) => _$this._x = x;

  int? _y;
  int? get y => _$this._y;
  set y(int? y) => _$this._y = y;

  String? _game;
  String? get game => _$this._game;
  set game(String? game) => _$this._game = game;

  TurnJsonldTurnCreateBuilder() {
    TurnJsonldTurnCreate._defaults(this);
  }

  TurnJsonldTurnCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _game = $v.game;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TurnJsonldTurnCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TurnJsonldTurnCreate;
  }

  @override
  void update(void Function(TurnJsonldTurnCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TurnJsonldTurnCreate build() => _build();

  _$TurnJsonldTurnCreate _build() {
    final _$result =
        _$v ?? new _$TurnJsonldTurnCreate._(x: x, y: y, game: game);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
