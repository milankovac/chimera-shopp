import 'package:chimera/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductView extends StatelessWidget {
  final product;
  const ProductView(this.product);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            color: Colors.white,
            width: 250,
            height: 320,
            child: Column(
              children: [
                Image.network(product.image),
                Text(product.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.price.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: (){
                         cart.addItem(product.id, product.price, product.name);
                        }, icon: Icon(Icons.shopping_cart))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
