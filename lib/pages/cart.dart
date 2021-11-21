import 'package:chimera/models/Cart.dart';
import 'package:chimera/widgets/cart_item.dart';
import 'package:chimera/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
    static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        title:  const Text('CART'),
         automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: cart.itemCount,
        itemBuilder: (context,index){
          final cartItem =  cart.items.values.toList()[index];
          final productId =  cart.items.keys.toList()[index];
          return CartItemWidget(cartItem,productId);
        }),
      bottomNavigationBar: Navigation(),
    );
  }
}