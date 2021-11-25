import 'package:chimera/models/Cart.dart';
import 'package:chimera/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//pages
import './pages/login.dart';
import './pages/shop.dart';
import './pages/cart.dart';
import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Cart()),
         ChangeNotifierProvider.value(value: Products())
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:const HomePage(),
          routes: {
            CartPage.routeName: (ctx) => CartPage(),
            ShopPage.routeName:(ctx) => const ShopPage(),
            HomePage.routeName: (ctx)=> const HomePage(),
          }),
    );
  }
}
