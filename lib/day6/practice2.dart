// 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오
// 1) 대한민국의 도시 이름 모음 (순서 상관 없음): Set
// 2) 10명 학생의 시험 점수: List
// 3) 대한민국의 도시별 인구수 (순서 상관 없음): Map

class Person {
  String name;

  Person({
    required this.name,
  });
}

void main() {
  Person person1 = Person(name: '홍길동');
  Person person2 = Person(name: '한석봉');

  List<Person> personList = [person1, person2];
  final iterator = personList.iterator;
  while(iterator.moveNext()) {
    print(iterator.current.name);
  }


}
