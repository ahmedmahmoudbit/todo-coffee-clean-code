import 'package:flutter/cupertino.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';

import '../../../../core/utils/resources/assets.gen.dart';

class CoffeeTypeModel {
  final String name;
  final String img;
  final int index;

  CoffeeTypeModel({required this.name,required this.img,required this.index});

}

List<CoffeeTypeModel> getCoffeeTypes(BuildContext context) {
  return [
    CoffeeTypeModel(name: context.locale.coffee_latih , img: Assets.images.cup1 ,index: 0),
    CoffeeTypeModel(name: context.locale.coffee_black , img: Assets.images.cup2 ,index: 1),
    CoffeeTypeModel(name: context.locale.moka , img: Assets.images.cup3 ,index: 2)
  ];
}