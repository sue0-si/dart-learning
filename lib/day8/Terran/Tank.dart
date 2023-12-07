import 'package:dart/day8/Mechanic.dart';
import 'Terran.dart';

class Tank extends Terran implements Mechanic {
  Tank({
    required super.hp,
    required super.unitType
  });

}