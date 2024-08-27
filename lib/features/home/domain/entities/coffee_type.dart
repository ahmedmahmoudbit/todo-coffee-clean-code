import 'package:flutter/cupertino.dart';
import 'package:unicode/core/utils/resources/resources_exporter.dart';

class CoffeeTypeModel {
  final String name;
  final String img;
  final int index;

  CoffeeTypeModel({required this.name,required this.img,required this.index});

}

List<CoffeeTypeModel> getCoffeeTypes(BuildContext context) {
  return [
    CoffeeTypeModel(name: context.locale.coffee_latih , img: 'assets/images/cup1.svg' ,index: 0),
    CoffeeTypeModel(name: context.locale.coffee_black , img: 'assets/images/cup2.svg' ,index: 1),
    CoffeeTypeModel(name: context.locale.moka , img: 'assets/images/cup3.svg' ,index: 2)
  ];
}