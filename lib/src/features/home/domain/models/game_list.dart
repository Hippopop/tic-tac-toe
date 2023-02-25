class GameList {
  String? context;
  String? id;
  String? type;
  List<GameData>? hydraMember;
  int? hydraTotalItems;
  HydraView? hydraView;
  HydraSearch? hydraSearch;

  GameList(
      {this.context,
      this.id,
      this.type,
      this.hydraMember,
      this.hydraTotalItems,
      this.hydraView,
      this.hydraSearch});

  GameList.fromMap(Map<String, dynamic> json) {
    context = json['@context'];
    id = json['@id'];
    type = json['@type'];
    if (json['hydra:member'] != null) {
      hydraMember = <GameData>[];
      json['hydra:member'].forEach((v) {
        hydraMember!.add(GameData.fromMap(v));
      });
    }
    hydraTotalItems = json['hydra:totalItems'];
    hydraView = json['hydra:view'] != null
        ? HydraView.fromMap(json['hydra:view'])
        : null;
    hydraSearch = json['hydra:search'] != null
        ? HydraSearch.fromMap(json['hydra:search'])
        : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@context'] = context;
    mapData['@id'] = id;
    mapData['@type'] = type;
    if (hydraMember != null) {
      mapData['hydra:member'] = hydraMember!.map((v) => v.toMap()).toList();
    }
    mapData['hydra:totalItems'] = hydraTotalItems;
    if (hydraView != null) {
      mapData['hydra:view'] = hydraView!.toMap();
    }
    if (hydraSearch != null) {
      mapData['hydra:search'] = hydraSearch!.toMap();
    }
    return mapData;
  }
}

class GameData {
  String? idPath;
  String? type;
  int? id;
  String? player1;
  String? player2;
  String? result;
  bool? open;
  String? code;
  String? createdAt;
  String? finishedAt;
  List<Turns>? turns;
  String? currentTurnPlayer;

  GameData(
      {this.idPath,
      this.type,
      this.id,
      this.player1,
      this.player2,
      this.result,
      this.open,
      this.code,
      this.createdAt,
      this.finishedAt,
      this.turns,
      this.currentTurnPlayer});

  GameData.fromMap(Map<String, dynamic> json) {
    idPath = json['@id'];
    type = json['@type'];
    id = json['id'];
    player1 = json['player1'];
    player2 = json['player2'];
    result = json['result'];
    open = json['open'];
    code = json['code'];
    createdAt = json['createdAt'];
    finishedAt = json['finishedAt'];
    if (json['turns'] != null) {
      turns = <Turns>[];
      json['turns'].forEach((v) {
        turns!.add(Turns.fromMap(v));
      });
    }
    currentTurnPlayer = json['currentTurnPlayer'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@id'] = idPath;
    mapData['@type'] = type;
    mapData['id'] = id;
    mapData['player1'] = player1;
    mapData['player2'] = player2;
    mapData['result'] = result;
    mapData['open'] = open;
    mapData['code'] = code;
    mapData['createdAt'] = createdAt;
    mapData['finishedAt'] = finishedAt;
    if (turns != null) {
      mapData['turns'] = turns!.map((v) => v.toMap()).toList();
    }
    mapData['currentTurnPlayer'] = currentTurnPlayer;
    return mapData;
  }
}

class Turns {
  String? id;
  String? type;
  String? player;
  int? x;
  int? y;
  bool? isPlayer1;
  String? createdAt;
  bool? highlight;

  Turns(
      {this.id,
      this.type,
      this.player,
      this.x,
      this.y,
      this.isPlayer1,
      this.createdAt,
      this.highlight});

  Turns.fromMap(Map<String, dynamic> json) {
    id = json['@id'];
    type = json['@type'];
    player = json['player'];
    x = json['x'];
    y = json['y'];
    isPlayer1 = json['isPlayer1'];
    createdAt = json['createdAt'];
    highlight = json['highlight'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {};
    data['@id'] = id;
    data['@type'] = type;
    data['player'] = player;
    data['x'] = x;
    data['y'] = y;
    data['isPlayer1'] = isPlayer1;
    data['createdAt'] = createdAt;
    data['highlight'] = highlight;
    return data;
  }
}

class HydraView {
  String? id;
  String? type;
  String? hydraFirst;
  String? hydraLast;
  String? hydraNext;

  HydraView(
      {this.id, this.type, this.hydraFirst, this.hydraLast, this.hydraNext});

  HydraView.fromMap(Map<String, dynamic> json) {
    id = json['@id'];
    type = json['@type'];
    hydraFirst = json['hydra:first'];
    hydraLast = json['hydra:last'];
    hydraNext = json['hydra:next'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@id'] = id;
    mapData['@type'] = type;
    mapData['hydra:first'] = hydraFirst;
    mapData['hydra:last'] = hydraLast;
    mapData['hydra:next'] = hydraNext;
    return mapData;
  }
}

class HydraSearch {
  String? type;
  String? hydraTemplate;
  String? hydraVariableRepresentation;
  List<HydraMapping>? hydraMapping;

  HydraSearch(
      {this.type,
      this.hydraTemplate,
      this.hydraVariableRepresentation,
      this.hydraMapping});

  HydraSearch.fromMap(Map<String, dynamic> json) {
    type = json['@type'];
    hydraTemplate = json['hydra:template'];
    hydraVariableRepresentation = json['hydra:variableRepresentation'];
    if (json['hydra:mapping'] != null) {
      hydraMapping = <HydraMapping>[];
      json['hydra:mapping'].forEach((v) {
        hydraMapping!.add(HydraMapping.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@type'] = type;
    mapData['hydra:template'] = hydraTemplate;
    mapData['hydra:variableRepresentation'] = hydraVariableRepresentation;
    if (hydraMapping != null) {
      mapData['hydra:mapping'] = hydraMapping!.map((v) => v.toMap()).toList();
    }
    return mapData;
  }
}

class HydraMapping {
  String? type;
  String? variable;
  String? property;
  bool? require;

  HydraMapping({this.type, this.variable, this.property, this.require});

  HydraMapping.fromMap(Map<String, dynamic> json) {
    type = json['@type'];
    variable = json['variable'];
    property = json['property'];
    require = json['required'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@type'] = type;
    mapData['variable'] = variable;
    mapData['property'] = property;
    mapData['required'] = require;
    return mapData;
  }
}
