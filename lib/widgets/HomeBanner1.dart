// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeBanner1 extends StatelessWidget {
  const HomeBanner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network('https://fgl.scene7.com/is/image/FGLSportsLtd/FGL_Nike-Womens-Training-Shoes-Clothing-Sportchek-1920x400?wid=1120&fit=fit,1&op_sharpen=1&resMode=sharp2&qlt=85,1'),
          Container(height: 10), // set height
          Text(
            'Nike fosters a culture of invention.'.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.w900, fontSize: 17, color: Colors.white),
          ),
          Container(height: 10), // set height
        ],
      ),
    );
  }
}
