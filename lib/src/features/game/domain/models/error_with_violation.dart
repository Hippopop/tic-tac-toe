class ErrorWithViolationMode {
  String? context;
  String? type;
  String? hydraTitle;
  String? hydraDescription;
  List<Violations> violations = [];

  ErrorWithViolationMode(
      {this.context,
      this.type,
      this.hydraTitle,
      this.hydraDescription,
      this.violations = const []});

  ErrorWithViolationMode.fromMap(Map<String, dynamic> json) {
    context = json['@context'];
    type = json['@type'];
    hydraTitle = json['hydra:title'];
    hydraDescription = json['hydra:description'];
    if (json['violations'] != null) {
      violations = <Violations>[];
      json['violations'].forEach((v) {
        violations.add(Violations.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['@context'] = context;
    mapData['@type'] = type;
    mapData['hydra:title'] = hydraTitle;
    mapData['hydra:description'] = hydraDescription;
    mapData['violations'] = violations.map((v) => v.toMap()).toList();
    return mapData;
  }
}

class Violations {
  String? propertyPath;
  String? message;
  String? code;

  Violations({this.propertyPath, this.message, this.code});

  Violations.fromMap(Map<String, dynamic> json) {
    propertyPath = json['propertyPath'];
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    mapData['propertyPath'] = propertyPath;
    mapData['message'] = message;
    mapData['code'] = code;
    return mapData;
  }
}
