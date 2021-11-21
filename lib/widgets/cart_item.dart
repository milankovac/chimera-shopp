import 'package:chimera/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {
  final cartItem;
  final productId;
  const CartItemWidget(this.cartItem,this.productId);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Theme.of(context).errorColor,
        child: const  Icon(Icons.delete,color: Colors.white,size: 40,),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 4,),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context,listen: false).removeItem(productId.toString());
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.network(cartItem.image),
            title: Text(cartItem.title,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            subtitle: Text('Total: \$'+(cartItem.price*cartItem.quantity).toString()),
            trailing: const Icon(Icons.arrow_back, color: Colors.red,),
          ),
        ),
      ),
    );
  }
}
