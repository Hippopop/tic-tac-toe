// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turn_jsonld_game_read.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TurnJsonldGameRead extends TurnJsonldGameRead {
  @override
  final GameJsonldGameReadContext? atContext;
  @override
  final String? atId;
  @override
  final String? atType;
  @override
  final String? player;
  @override
  final int? x;
  @override
  final int? y;
  @override
  final bool? isPlayer1;
  @override
  final DateTime? createdAt;
  @override
  final bool? highlight;

  factory _$TurnJsonldGameRead(
          [void Function(TurnJsonldGameReadBuilder)? updates]) =>
      (new TurnJsonldGameReadBuilder()..update(updates))._build();

  _$TurnJsonldGameRead._(
      {this.atContext,
      this.atId,
      this.atType,
      this.player,
      this.x,
      this.y,
      this.isPlayer1,
      this.createdAt,
      this.highlight})
      : super._();

  @override
  TurnJsonldGameRead rebuild(
          void Function(TurnJsonldGameReadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TurnJsonldGameReadBuilder toBuilder() =>
      new TurnJsonldGameReadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TurnJsonldGameRead &&
        atContext == other.atContext &&
        atId == other.atId &&
        atType == other.atType &&
        player == other.player &&
        x == other.x &&
        y == other.y &&
        isPlayer1 == other.isPlayer1 &&
        createdAt == other.createdAt &&
        highlight == other.highlight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atContext.hashCode);
    _$hash = $jc(_$hash, atId.hashCode);
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, player.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, isPlayer1.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, highlight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TurnJsonldGameRead')
          ..add('atContext', atContext)
          ..add('atId', atId)
          ..add('atType', atType)
          ..add('player', player)
          ..add('x', x)
          ..add('y', y)
          ..add('isPlayer1', isPlayer1)
          ..add('createdAt', createdAt)
          ..add('highlight', highlight))
        .toString();
  }
}

class TurnJsonldGameReadBuilder
    implements Builder<TurnJsonldGameRead, TurnJsonldGameReadBuilder> {
  _$TurnJsonldGameRead? _$v;

  GameJsonldGameReadContextBuilder? _atContext;
  GameJsonldGameReadContextBuilder get atContext =>
      _$this._atContext ??= new GameJsonldGameReadContextBuilder();
  set atContext(GameJsonldGameReadContextBuilder? atContext) =>
      _$this._atContext = atContext;

  String? _atId;
  String? get atId => _$this._atId;
  set atId(String? atId) => _$this._atId = atId;

  String? _atType;
  String? get atType => _$this._atType;
  set atType(String? atType) => _$this._atType = atType;

  String? _player;
  String? get player => _$this._player;
  set player(String? player) => _$this._player = player;

  int? _x;
  int? get x => _$this._x;
  set x(int? x) => _$this._x = x;

  int? _y;
  int? get y => _$this._y;
  set y(int? y) => _$this._y = y;

  bool? _isPlayer1;
  bool? get isPlayer1 => _$this._isPlayer1;
  set isPlayer1(bool? isPlayer1) => _$this._isPlayer1 = isPlayer1;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _highlight;
  bool? get highlight => _$this._highlight;
  set highlight(bool? highlight) => _$this._highlight = highlight;

  TurnJsonldGameReadBuilder() {
    TurnJsonldGameRead._defaults(this);
  }

  TurnJsonldGameReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atContext = $v.atContext?.toBuilder();
      _atId = $v.atId;
      _atType = $v.atType;
      _player = $v.player;
      _x = $v.x;
      _y = $v.y;
      _isPlayer1 = $v.isPlayer1;
      _createdAt = $v.createdAt;
      _highlight = $v.highlight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TurnJsonldGameRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TurnJsonldGameRead;
  }

  @override
  void update(void Function(TurnJsonldGameReadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TurnJsonldGameRead build() => _build();

  _$TurnJsonldGameRead _build() {
    _$TurnJsonldGameRead _$result;
    try {
      _$result = _$v ??
          new _$TurnJsonldGameRead._(
              atContext: _atContext?.build(),
              atId: atId,
              atType: atType,
              player: player,
              x: x,
              y: y,
              isPlayer1: isPlayer1,
              createdAt: createdAt,
              highlight: highlight);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atContext';
        _atContext?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TurnJsonldGameRead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
