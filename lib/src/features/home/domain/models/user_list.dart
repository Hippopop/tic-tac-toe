import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';

class UserListModel {
  String? context;
  String? id;
  String? type;
  List<User> hydraMember = [];
  int? hydraTotalItems;
  HydraView? hydraView;
  HydraSearch? hydraSearch;

  UserListModel(
      {this.context,
      this.id,
      this.type,
      this.hydraMember = const [],
      this.hydraTotalItems,
      this.hydraView,
      this.hydraSearch});

  UserListModel.fromMap(Map<String, dynamic> json) {
    context = json['@context'];
    id = json['@id'];
    type = json['@type'];
    if (json['hydra:member'] != null) {
      hydraMember = <User>[];
      json['hydra:member'].forEach((v) {
        hydraMember.add(User.fromMap(v));
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
    mapData['hydra:member'] = hydraMember.map((v) => v.toMap()).toList();
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
/* 
class HydraMember {
  String? idPath;
  String? type;
  int? id;
  String? email;
  String? name;

  HydraMember({this.id, this.type, this.idPath, this.email, this.name});

  HydraMember.fromMap(Map<String, dynamic> json) {
    idPath = json['@id'];
    type = json['@type'];
    id = json['id'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@id'] = idPath;
    mapData['@type'] = type;
    mapData['id'] = id;
    mapData['email'] = email;
    mapData['name'] = name;
    return mapData;
  }
} */

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
