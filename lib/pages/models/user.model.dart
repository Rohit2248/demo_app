import 'dart:convert';

class User {
  String user;
  String password;
  String about;
  List modelData;

  User({
    this.user,
    this.password,
    this.about,
    this.modelData,
  });

  static User fromMap(Map<String, dynamic> user) {
    return new User(
      user: user['user'],
      password: user['password'],
      about: user['about'],
      modelData: jsonDecode(user['model_data']),
    );
  }

  toMap() {
    return {
      'user': user,
      'password': password,
      'about': about,
      'model_data': jsonEncode(modelData),
    };
  }
}
