import 'package:unicode/features/home/data/models/coffee_model_entity.dart';

abstract class HomeRepositoryBase {
  Future<List<CoffeeModelEntity>> getAllCoffees();
  Future<void> addCoffee(CoffeeModelEntity coffee);
  Future<void> deleteCoffee(int index);
  Future<void> updateCoffees(List<CoffeeModelEntity> coffees);
  }