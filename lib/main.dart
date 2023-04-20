import 'package:demoflutter/app.dart';
import 'package:demoflutter/bo/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: MyApp(),
  ));
}