import 'package:hive/hive.dart';
import '../models/coffee_model_entity.dart';

class HiveCoffeeDataSource {
  final Box<CoffeeModelEntity> coffeeBox = Hive.box<CoffeeModelEntity>('coffeeBox');

  Future<List<CoffeeModelEntity>> getCoffees() async {
    return coffeeBox.values.toList();
  }

  Future<void> saveCoffees(List<CoffeeModelEntity> coffees) async {
    await coffeeBox.clear();
    await coffeeBox.addAll(coffees);
  }

  Future<void> addCoffee(CoffeeModelEntity coffee) async {
    await coffeeBox.add(coffee);
  }

  Future<void> removeCoffee(int index) async {
    await coffeeBox.deleteAt(index);
  }

}
