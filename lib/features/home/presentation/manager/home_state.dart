part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.CoffeeLoading() = _CoffeeLoading;
  const factory HomeState.CoffeeGetData(List<CoffeeModelEntity> coffees) = _CoffeeGetData;
  const factory HomeState.CoffeeError() = _CoffeeError;
  const factory HomeState.CoffeeAdded() = CoffeeAdded;
  const factory HomeState.CoffeeUpdated() = CoffeeUpdated;
  const factory HomeState.CoffeeDeleted(String error) = CoffeeDeleted;
}
