import 'user.dart';

class DataUser {
  User? user;
  String? token;

  DataUser({this.user, this.token});

  factory DataUser.fromjson(Map<String, dynamic> json) {
    return DataUser(
      user: json['user'] == null
          ? null
          : User.fromjson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic> tojson() {
    return {'user': user?.tojson(), 'token': token};
  }
}
