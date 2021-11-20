import 'package:chimera/models/Cart.dart';
import 'package:chimera/widgets/alert.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductView extends StatelessWidget {
  final product;
  const ProductView(this.product);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    const alert =
        AlertDialogCustom('The item has been successfully added to the cart!');
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            color: Colors.white,
            width: 250,
            height: 320,
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/placeholder.gif',
                  image: product.image,
                  imageErrorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/images/placeholder.gif',
                        fit: BoxFit.fitWidth);
                  },
                ),
                Text(product.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.price.toString() + '\$',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                          cart.addItem(product.id, product.price, product.name);
                        },
                        icon: const Icon(Icons.shopping_cart))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
