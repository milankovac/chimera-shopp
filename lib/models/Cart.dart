// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final num price;

  CartItem({
    required this.id,
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

//add item in cart
  void addItem(String productId, num price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              quantity: existingCartItem.quantity + 1,
              price: existingCartItem.price));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: getRandomString(10),
              title: title,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }

//generate random string for cart id
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
