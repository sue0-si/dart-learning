abstract class Unit {
  int hp;
  String unitType;
  List<Object> army = List<Object>.filled(12, Object());

  Unit({
    required this.hp,
    required this.unitType,
    required this.army,
  });
}