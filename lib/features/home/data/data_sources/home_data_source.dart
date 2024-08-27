import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/coffee_model_entity.dart';

class HomeDS {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<CoffeeModelEntity>> fetchCoffees() async {
    final snapshot = await _firestore.collection('coffees').get();
    List<CoffeeModelEntity> coffees = [];
    for (var doc in snapshot.docs) {
      final data = doc.data();
      final coffee = CoffeeModelEntity.fromJson(data);
      coffees.add(coffee);
    }
    return coffees;
  }

  Future<void> addCoffee(CoffeeModelEntity coffee) async {
    await _firestore.collection('coffees').add(coffee.toJson());
  }

  Future<void> deleteCoffee(int index) async {
    try {
      final snapshot = await _firestore.collection('coffees').get();
      final docs = snapshot.docs;
      if (index >= 0 && index < docs.length) {
        final doc = docs[index];
        final coffeeId = doc.id;
        await _firestore.collection('coffees').doc(coffeeId).delete();
      }
    } catch (e) {
    }
  }


}