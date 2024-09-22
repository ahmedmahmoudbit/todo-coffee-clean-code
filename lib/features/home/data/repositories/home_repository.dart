import 'package:once/once.dart';
import 'package:unicode/features/home/data/models/coffee_model_entity.dart';

import '../../domain/repositories/repo.dart';
import '../data_sources/hive_coffee_data_source.dart';
import '../data_sources/home_data_source.dart';

class HomeRepository implements HomeRepositoryBase {
  final HomeDS firebaseDataSource;
  final HiveCoffeeDataSource hiveDataSource;

  HomeRepository(
      {required this.firebaseDataSource, required this.hiveDataSource});


  @override
  Future<List<CoffeeModelEntity>> getAllCoffees() async {
    List<CoffeeModelEntity> remoteCoffees = [];
    await Once.runCustom(
        '6h',
        callback: () async {
          remoteCoffees = await firebaseDataSource.fetchCoffees();
          hiveDataSource.saveCoffees(remoteCoffees);
        },
        duration: const Duration(days: 6),
        fallback: () async {
          remoteCoffees =  await hiveDataSource.getCoffees();
        });
    return remoteCoffees;
  }



  @override
  Future<void> addCoffee(CoffeeModelEntity coffee) async {
    await firebaseDataSource.addCoffee(coffee);
    await hiveDataSource.addCoffee(coffee);
  }

  @override
  Future<void> updateCoffees(List<CoffeeModelEntity> coffees) async {
    await hiveDataSource.saveCoffees(coffees);
  }

  @override
  Future<void> deleteCoffee(int index) async {
    await hiveDataSource.removeCoffee(index);
    await firebaseDataSource.deleteCoffee(index);
  }
}
