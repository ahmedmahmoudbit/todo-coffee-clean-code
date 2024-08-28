import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicode/core/utils/resources/extensions.dart';
import 'package:unicode/features/home/data/models/coffee_model_entity.dart';
import '../../domain/repositories/repo.dart';
part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepositoryBase repository;

  HomeCubit({required this.repository,}) : super(const HomeState.initial());

  Future<void> fetchCoffees() async {
    try {
      emit(const HomeState.CoffeeLoading());
      final coffees = await repository.getAllCoffees();
      emit(HomeState.CoffeeGetData(coffees));
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }

  Future<void> addCoffee(CoffeeModelEntity coffee) async {
    emit(const HomeState.CoffeeLoading());
    try {
      await Future.delayed(180.duration);
      await repository.addCoffee(coffee);
      fetchCoffees();
      emit(const HomeState.CoffeeAdded());
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }

  Future<void> deleteCoffee(int coffee) async {
    try {
      await repository.deleteCoffee(coffee);
      fetchCoffees();
      emit(const HomeState.CoffeeDeleted("Done"));
    } catch (e) {
      emit(const HomeState.CoffeeError());
    }
  }


}
