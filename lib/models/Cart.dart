// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class CartItem {
  final String id;
  final String image;
  final String title;
  final int quantity;
  final int price;

  CartItem({
    required this.id,
    required this.image,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  final _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  Map<String, CartItem> _items = {};

//get cart items count
  int get itemCount {
    return _items.length;
  }

//get cart items
  Map<String, CartItem> get items {
    return {..._items};
  }

//add item in cart
  void addItem(String productId, String image, int price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              image: existingCartItem.image,
              title: existingCartItem.title,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              image: image,
              title: title,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }

//remove item from cart
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }
}
