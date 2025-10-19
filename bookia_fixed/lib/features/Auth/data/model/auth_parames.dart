class AuthParames {
  String? name;
  String? email;
  String? password;
  String? confirmPassword;

  AuthParames({this.name, this.email, this.password, this.confirmPassword});
  //عشان احول ال json ل object
  //factory عشان اقدر اعمل اكتر من اوبجكت من نفس الكلاس
  factory AuthParames.fromJson(Map<String, dynamic> json) {
    return AuthParames(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      confirmPassword: json['password_confirmation'],
    );
  }

  //عشان احول ال object ل json
  Map<String, dynamic> ToJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": confirmPassword,
    };
  }
}
