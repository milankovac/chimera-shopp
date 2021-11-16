import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/product_view.dart';
import '../widgets/navigation.dart';
class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<int> text = [1,2,3,4];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: new Center(child: new Text('SHOP', textAlign: TextAlign.center)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
           for ( var i in text )(PorductView())
        ],)
      ),
       bottomNavigationBar: Navigation(),
    );
  }
}
