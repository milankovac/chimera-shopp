import 'package:chimera/models/Cart.dart';
import 'package:chimera/models/products.dart';
import 'package:chimera/widgets/slider_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/product_view.dart';
import '../widgets/navigation.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('SHOP'),
        actions: [
          Consumer<Cart>(builder:(context,cart,child) => TextButton.icon(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.white,), label: Text(cart.itemCount.toString(),style: TextStyle(color: Colors.white),)))
        ]
      ),
      body: ListView(
        children: [
          SliderShop(),
          SingleChildScrollView(
              child: Column(
            children: [
              for (var product in products) ProductView(product),
            ],
          )),
        ],
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
