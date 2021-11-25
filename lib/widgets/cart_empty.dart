import 'package:flutter/material.dart';

class CartEmpty extends StatefulWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  _CartEmptyState createState() => _CartEmptyState();
}

class _CartEmptyState extends State<CartEmpty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.network(
                'https://proteinbasket.com/assets/img/shopping-cart.png'),
          ),
        ],
      ),
    );
  }
}
