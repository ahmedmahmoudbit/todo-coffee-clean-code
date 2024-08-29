import 'package:unicode/features/home/data/models/coffee_model_entity.dart';

import '../../../../core/utils/resources/use_case_base.dart';
import '../repositories/repo.dart';

class FetchCoffeesUS extends UseCaseBase<List<CoffeeModelEntity>>{
  final HomeRepositoryBase repository;

  FetchCoffeesUS({
    required this.repository,
  });

  @override
  Future<List<CoffeeModelEntity>> call() async => await repository.getAllCoffees();
}