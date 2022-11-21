
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List _shopItems = [
      ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
      ["Banana", "2.50", "assets/images/banana.png", Colors.yellow],
      ["Chicken", "12.80", "assets/images/chicken.png", Colors.brown],
      ["Water", "1.00", "assets/images/water.png", Colors.blue],
      ["pineapple", "3.00", "assets/images/pineaple.png", Colors.cyan],
      ["Orange", "2.00", "assets/images/orange.png", Colors.pink],

  ];

  get shopItems => _shopItems;

  List _cartItems = [];

  get cartItems => _cartItems;

  // add item to cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;

    for (int i = 0 ; i < _cartItems.length ; i++) {
    totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);

  }
}