import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'coffee_model_entity.freezed.dart';
part 'coffee_model_entity.g.dart';

@freezed
@HiveType(typeId: 0)
class CoffeeModelEntity with _$CoffeeModelEntity {
  const factory CoffeeModelEntity({
    @HiveField(0) required String name,
    @HiveField(1) required int suger,
    @HiveField(2) required int index,
  }) = _CoffeeModelEntity;

  factory CoffeeModelEntity.fromJson(Map<String, dynamic> json) =>
      _$CoffeeModelEntityFromJson(json);
}
