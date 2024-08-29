import 'package:unicode/features/home/data/models/coffee_model_entity.dart';

import '../../../../core/utils/resources/use_case_base.dart';
import '../repositories/repo.dart';

class AddCoffeeUS extends UseCaseBase<void>{
  final HomeRepositoryBase repository;
  final CoffeeModelEntity coffee;

  AddCoffeeUS({
    required this.repository,
    required this.coffee,
  });

  @override
  Future<void> call() async => await repository.addCoffee(coffee);
}