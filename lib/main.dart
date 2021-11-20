import 'package:chimera/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//pages
import './pages/login.dart';
import 'package:chimera/pages/shop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<Cart>(
          create: (context) => Cart(),
          child: const ShopPage(),
        ));
  }
}
