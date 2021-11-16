import 'package:chimera/models/products.dart';
import 'package:flutter/material.dart';

import '../widgets/product_view.dart';
import '../widgets/navigation.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Shop'),
        actions: [
          TextButton.icon(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.white,), label: Text('1',style: TextStyle(color: Colors.white),))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          for (var product in products) ProductView(product),
        ],
      )),
      bottomNavigationBar: Navigation(),
    );
  }
}
