import 'dart:convert';

class AuthToken {
  final String token;
  final String refreshToken;
  const AuthToken({
    required this.token,
    required this.refreshToken,
  });

  AuthToken copyWith({
    String? token,
    String? refreshToken,
  }) {
    return AuthToken(
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'refresh_token': refreshToken,
    };
  }

  factory AuthToken.fromMap(Map<String, dynamic> map) {
    return AuthToken(
      token: map['token'] as String,
      refreshToken: map['refresh_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthToken.fromJson(String source) => AuthToken.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AuthToken(token: $token, refreshToken: $refreshToken)';

  @override
  bool operator ==(covariant AuthToken other) {
    if (identical(this, other)) return true;
  
    return 
      other.token == token &&
      other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => token.hashCode ^ refreshToken.hashCode;
}