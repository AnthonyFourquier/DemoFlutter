import 'package:demoflutter/bo/accessoire.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final listAccessoires = <Accessoire>[];
  get count => listAccessoires.length;
  CartModel();

  void addItem(Accessoire accessoire) {
    listAccessoires.add(accessoire);
    notifyListeners();
  }

  void removeItem(Accessoire accessoire) {
    listAccessoires.remove(accessoire);
    notifyListeners();
  }

}