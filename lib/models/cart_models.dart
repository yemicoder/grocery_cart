
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List shopItems = [
      ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
      ["Banana", "2.50", "assets/images/banana.png", Colors.yellow],
      ["Chicken", "12.80", "assets/images/chicken.png", Colors.brown],
      ["Water", "1.00", "assets/images/water.png", Colors.blue],
      ["pineapple", "3.00", "assets/images/pineaple.png", Colors.cyan],
      ["Orange", "2.00", "assets/images/orange.png", Colors.pink],

  ];
}