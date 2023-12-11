import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toJson() => {
    'name' : name,
    'age' : age
  };

}

class Department {
  String name;
  Employee leader;

  Department({
    required this.name,
    required this.leader,
  });
}

void main() {
  Employee adminLeader = Employee(name: "홍길동", age: 41);

  print(adminLeader.toJson());
  final companyFile = File("company.txt");
  companyFile.writeAsStringSync(jsonEncode(adminLeader.toJson()));
}

