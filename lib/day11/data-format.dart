import 'dart:convert';
import 'dart:io';

void main() {
  File file = File('user.txt');

  User user2 = User.fromJson({
    'name': '슈퍼맨',
    'email': 'aaaa',
    'age': 10,
  });

  file.writeAsStringSync(jsonEncode(user2.toJson()));

  // append 모드
  file.writeAsStringSync(jsonEncode(user2.toJson()), mode: FileMode.append);
  final json = {

  };
  print(json.runtimeType);

}

class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
      age: map['age'] as int,
    );
  }

}