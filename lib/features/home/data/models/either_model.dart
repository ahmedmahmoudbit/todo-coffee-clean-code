import 'package:cloud_firestore/cloud_firestore.dart';

import 'coffee_model_entity.dart';

class FetchCoffeesResult {
  final List<CoffeeModelEntity> coffees;
  final DocumentSnapshot? lastDocument;

  FetchCoffeesResult({required this.coffees, required this.lastDocument});
}
