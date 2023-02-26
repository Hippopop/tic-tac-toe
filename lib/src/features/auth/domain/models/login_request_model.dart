import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required String email,
    required String password,
  })  : _email = email,
        _password = password;

  String _email;
  String _password;
  get email => _email;
  set email(value) => _email = value;
  get password => _password;
  set password(value) => _password = value;

  LoginRequest copyWith({
    String? email,
    String? password,
  }) {
    return LoginRequest(
      email: email ?? _email,
      password: password ?? _password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': _email,
      'password': _password,
    };
  }

  factory LoginRequest.fromMap(Map<String, dynamic> map) {
    return LoginRequest(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginRequest.fromJson(String source) =>
      LoginRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginRequest(email: $_email, password: $_password)';

  @override
  bool operator ==(covariant LoginRequest other) {
    if (identical(this, other)) return true;

    return other._email == _email && other._password == _password;
  }

  @override
  int get hashCode => _email.hashCode ^ _password.hashCode;
}
