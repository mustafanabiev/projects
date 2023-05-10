import 'dart:convert';

List<HomeModel> fromStringList(String source) =>
    (jsonDecode(source) as List).map((e) => HomeModel.fromMap(e)).toList();

class HomeModel {
  const HomeModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  final int id;
  final String name;
  final String username;
  final String email;

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      id: map['id'] as int,
      name: map['name'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
    );
  }
}
