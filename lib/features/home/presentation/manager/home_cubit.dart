import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/features/home/data/models/coffee_model_entity.dart';
import 'package:unicode/features/home/domain/use_cases/add_coffee_us.dart';
import 'package:unicode/features/home/domain/use_cases/fetch_coffees_us.dart';
import '../../domain/repositories/repo.dart';
import '../../domain/use_cases/delete_coffee_us.dart';
part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepositoryBase repository;

  HomeCubit({required this.repository,}) : super(const HomeState.initial());

  Future<void> fetchCoffees() async {
    try {
      emit(const HomeState.CoffeeLoading());
      final coffees = await FetchCoffeesUS(repository: repository)();
      emit(HomeState.CoffeeGetData(coffees));
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }

  Future<void> addCoffee(CoffeeModelEntity coffee) async {
    emit(const HomeState.CoffeeLoading());
    try {
      await Future.delayed(180.duration);
      await AddCoffeeUS(repository: repository,coffee: coffee)();
      fetchCoffees();
      emit(const HomeState.CoffeeAdded());
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }

  Future<void> deleteCoffee(int coffee) async {
    try {
      await DeleteCoffeeUS(repository: repository,coffee: coffee)();
      fetchCoffees();
      emit(const HomeState.CoffeeDeleted("Done"));
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }


}
