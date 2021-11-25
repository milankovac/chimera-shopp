import 'package:chimera/models/Cart.dart';
import 'package:chimera/models/products.dart';
import 'package:chimera/widgets/slider_shop.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../widgets/product_view.dart';
import '../widgets/navigation.dart';
import 'cart.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);
  static const routeName = '/shop';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('SHOP'),
          automaticallyImplyLeading: false,
          actions: [
            Consumer<Cart>(
                builder: (context, cart, child) => TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.bottomToTop,
                              child: CartPage()));
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    label: Text(
                      cart.itemCount.toString(),
                      style: const TextStyle(color: Colors.white),
                    )))
          ]),
      body: ListView(
        children: [
          SliderShop(),
          SingleChildScrollView(
              child: Column(
            children: [
              for (var product in Products.products) ProductView(product),
            ],
          )),
        ],
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
