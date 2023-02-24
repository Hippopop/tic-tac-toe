import 'dart:convert';
class User {
  int id;
  String context;
  String idPath;
  String type;
  String email;
  String name;
  User({
    required this.id,
    required this.context,
    required this.idPath,
    required this.type,
    required this.email,
    required this.name,
  });

  User copyWith({
    int? id,
    String? context,
    String? idPath,
    String? type,
    String? email,
    String? name,
  }) {
    return User(
      id: id ?? this.id,
      context: context ?? this.context,
      idPath: idPath ?? this.idPath,
      type: type ?? this.type,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '@context': context,
      '@id': idPath,
      '@type': type,
      'id': id,
      'email': email,
      'name': name,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      context: map['@context'] as String,
      idPath: map['@id'] as String,
      type: map['@type'] as String,
      id: map['id'] as int,
      email: map['email'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, context: $context, idPath: $idPath, type: $type, email: $email, name: $name)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.context == context &&
        other.idPath == idPath &&
        other.type == type &&
        other.email == email &&
        other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        context.hashCode ^
        idPath.hashCode ^
        type.hashCode ^
        email.hashCode ^
        name.hashCode;
  }
}
