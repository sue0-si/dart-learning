// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여
// company.txt 파일에 쓰는 프로그램을 작성하시오.

import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

  // 직렬화해주는 메소드
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
  // 총무부 리더 ‘홍길동(41세)’의 인스턴스
  Employee adminLeader = Employee(name: "홍길동", age: 41);

  // company.txt 파일 생성 & 파일에 json 데이터 넣기
  final companyFile = File("company.txt");
  companyFile.writeAsStringSync(jsonEncode(adminLeader.toJson()));
}

