// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeBanner2 extends StatelessWidget {
  const HomeBanner2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Image.network(
                      'https://fgl.scene7.com/is/image/FGLSportsLtd/FGL_Nike-Pge37airZoom-PairedCTA?wid=540&fit=constrain,0&op_sharpen=1&resMode=sharp2&qlt=85,1'),
                  Container(
                    height: 10,
                  ),
                  const Text(
                    'NIKE PEGASUS 37',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Image.network(
                      'https://fgl.scene7.com/is/image/FGLSportsLtd/FGL_Nike-Yoga-PairedCTA?wid=540&fit=constrain,0&op_sharpen=1&resMode=sharp2&qlt=85,1'),
                  Container(
                    height: 10,
                  ),
                  const Text(
                    'NIKE YOGA',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
