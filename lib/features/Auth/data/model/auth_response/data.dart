import 'user.dart';

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  factory Data.fromjson(
    Map<String, dynamic> json,
  ) {
    return Data(
      user: json['user'] == null
          ? null
          : User.fromjson(
              json['user'] as Map<String, dynamic>,
            ),
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic>
  tojson() {
    return {
      'user': user
          ?.tojson(),
      'token': token,
    };
  }
}
