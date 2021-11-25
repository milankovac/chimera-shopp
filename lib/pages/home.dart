import 'package:chimera/widgets/HomeBanner1.dart';
import 'package:chimera/widgets/HomeBanner2.dart';
import 'package:chimera/widgets/HomeBanner3.dart';
import 'package:chimera/widgets/navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('HOME'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const HomeBanner1(),
                Container(
                  height: 50,
                ),
                Image.network(
                    'https://static.highsnobiety.com/wp-content/uploads/2021/10/19124111/ezgif.com-gif-maker-1.gif'),
                Container(
                  height: 50,
                ),
                const HomeBanner2(),
                Container(
                  height: 30,
                ),
                Image.network(
                    'https://air.jordan.com/wp-content/uploads/2017/05/the-air-jordan-6-infrared-artwork-by-mark-ward.gif'),
               const HomeBanner3(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
