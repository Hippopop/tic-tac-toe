// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_jsonld_game_read.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GameJsonldGameReadResultEnum _$gameJsonldGameReadResultEnum_unfinished =
    GameJsonldGameReadResultEnum._('unfinished');
const GameJsonldGameReadResultEnum _$gameJsonldGameReadResultEnum_player1 =
    GameJsonldGameReadResultEnum._('player1');
const GameJsonldGameReadResultEnum _$gameJsonldGameReadResultEnum_player2 =
    GameJsonldGameReadResultEnum._('player2');
const GameJsonldGameReadResultEnum _$gameJsonldGameReadResultEnum_draw =
    GameJsonldGameReadResultEnum._('draw');

GameJsonldGameReadResultEnum _$gameJsonldGameReadResultEnumValueOf(
    String name) {
  switch (name) {
    case 'unfinished':
      return _$gameJsonldGameReadResultEnum_unfinished;
    case 'player1':
      return _$gameJsonldGameReadResultEnum_player1;
    case 'player2':
      return _$gameJsonldGameReadResultEnum_player2;
    case 'draw':
      return _$gameJsonldGameReadResultEnum_draw;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GameJsonldGameReadResultEnum>
    _$gameJsonldGameReadResultEnumValues =
    BuiltSet<GameJsonldGameReadResultEnum>(const <GameJsonldGameReadResultEnum>[
  _$gameJsonldGameReadResultEnum_unfinished,
  _$gameJsonldGameReadResultEnum_player1,
  _$gameJsonldGameReadResultEnum_player2,
  _$gameJsonldGameReadResultEnum_draw,
]);

Serializer<GameJsonldGameReadResultEnum>
    _$gameJsonldGameReadResultEnumSerializer =
    _$GameJsonldGameReadResultEnumSerializer();

class _$GameJsonldGameReadResultEnumSerializer
    implements PrimitiveSerializer<GameJsonldGameReadResultEnum> {
  static const Map<String, Object> _toWire = <String, Object>{
    'unfinished': 'Unfinished',
    'player1': 'Player 1',
    'player2': 'Player 2',
    'draw': 'Draw',
  };
  static const Map<Object, String> _fromWire = <Object, String>{
    'Unfinished': 'unfinished',
    'Player 1': 'player1',
    'Player 2': 'player2',
    'Draw': 'draw',
  };

  @override
  final Iterable<Type> types = const <Type>[GameJsonldGameReadResultEnum];
  @override
  final String wireName = 'GameJsonldGameReadResultEnum';

  @override
  Object serialize(Serializers serializers, GameJsonldGameReadResultEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GameJsonldGameReadResultEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GameJsonldGameReadResultEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GameJsonldGameRead extends GameJsonldGameRead {
  @override
  final GameJsonldGameReadContext? atContext;
  @override
  final String? atId;
  @override
  final String? atType;
  @override
  final int? id;
  @override
  final String? player1;
  @override
  final String? player2;
  @override
  final GameJsonldGameReadResultEnum? result;
  @override
  final bool? open;
  @override
  final String? code;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? finishedAt;
  @override
  final BuiltList<TurnJsonldGameRead>? turns;
  @override
  final String? currentTurnPlayer;

  factory _$GameJsonldGameRead(
          [void Function(GameJsonldGameReadBuilder)? updates]) =>
      (GameJsonldGameReadBuilder()..update(updates))._build();

  _$GameJsonldGameRead._(
      {this.atContext,
      this.atId,
      this.atType,
      this.id,
      this.player1,
      this.player2,
      this.result,
      this.open,
      this.code,
      this.createdAt,
      this.finishedAt,
      this.turns,
      this.currentTurnPlayer})
      : super._();

  @override
  GameJsonldGameRead rebuild(
          void Function(GameJsonldGameReadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameJsonldGameReadBuilder toBuilder() =>
      GameJsonldGameReadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameJsonldGameRead &&
        atContext == other.atContext &&
        atId == other.atId &&
        atType == other.atType &&
        id == other.id &&
        player1 == other.player1 &&
        player2 == other.player2 &&
        result == other.result &&
        open == other.open &&
        code == other.code &&
        createdAt == other.createdAt &&
        finishedAt == other.finishedAt &&
        turns == other.turns &&
        currentTurnPlayer == other.currentTurnPlayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atContext.hashCode);
    _$hash = $jc(_$hash, atId.hashCode);
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, player1.hashCode);
    _$hash = $jc(_$hash, player2.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, turns.hashCode);
    _$hash = $jc(_$hash, currentTurnPlayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameJsonldGameRead')
          ..add('atContext', atContext)
          ..add('atId', atId)
          ..add('atType', atType)
          ..add('id', id)
          ..add('player1', player1)
          ..add('player2', player2)
          ..add('result', result)
          ..add('open', open)
          ..add('code', code)
          ..add('createdAt', createdAt)
          ..add('finishedAt', finishedAt)
          ..add('turns', turns)
          ..add('currentTurnPlayer', currentTurnPlayer))
        .toString();
  }
}

class GameJsonldGameReadBuilder
    implements Builder<GameJsonldGameRead, GameJsonldGameReadBuilder> {
  _$GameJsonldGameRead? _$v;

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

  String? _player1;
  String? get player1 => _$this._player1;
  set player1(String? player1) => _$this._player1 = player1;

  String? _player2;
  String? get player2 => _$this._player2;
  set player2(String? player2) => _$this._player2 = player2;

  GameJsonldGameReadResultEnum? _result;
  GameJsonldGameReadResultEnum? get result => _$this._result;
  set result(GameJsonldGameReadResultEnum? result) => _$this._result = result;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  ListBuilder<TurnJsonldGameRead>? _turns;
  ListBuilder<TurnJsonldGameRead> get turns =>
      _$this._turns ??= ListBuilder<TurnJsonldGameRead>();
  set turns(ListBuilder<TurnJsonldGameRead>? turns) => _$this._turns = turns;

  String? _currentTurnPlayer;
  String? get currentTurnPlayer => _$this._currentTurnPlayer;
  set currentTurnPlayer(String? currentTurnPlayer) =>
      _$this._currentTurnPlayer = currentTurnPlayer;

  GameJsonldGameReadBuilder() {
    GameJsonldGameRead._defaults(this);
  }

  GameJsonldGameReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atContext = $v.atContext?.toBuilder();
      _atId = $v.atId;
      _atType = $v.atType;
      _id = $v.id;
      _player1 = $v.player1;
      _player2 = $v.player2;
      _result = $v.result;
      _open = $v.open;
      _code = $v.code;
      _createdAt = $v.createdAt;
      _finishedAt = $v.finishedAt;
      _turns = $v.turns?.toBuilder();
      _currentTurnPlayer = $v.currentTurnPlayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameJsonldGameRead other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameJsonldGameRead;
  }

  @override
  void update(void Function(GameJsonldGameReadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameJsonldGameRead build() => _build();

  _$GameJsonldGameRead _build() {
    _$GameJsonldGameRead _$result;
    try {
      _$result = _$v ??
          _$GameJsonldGameRead._(
              atContext: _atContext?.build(),
              atId: atId,
              atType: atType,
              id: id,
              player1: player1,
              player2: player2,
              result: result,
              open: open,
              code: code,
              createdAt: createdAt,
              finishedAt: finishedAt,
              turns: _turns?.build(),
              currentTurnPlayer: currentTurnPlayer);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atContext';
        _atContext?.build();

        _$failedField = 'turns';
        _turns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GameJsonldGameRead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
