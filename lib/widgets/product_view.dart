import 'package:flutter/material.dart';
class PorductView extends StatefulWidget {
  const PorductView({ Key? key }) : super(key: key);

  @override
  _PorductViewState createState() => _PorductViewState();
}

class _PorductViewState extends State<PorductView> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              color: Colors.white,
              width: 250,
              height: 320,
              child: Column(
                children: [
                  Image.network('https://5.imimg.com/data5/SH/GC/MY-8764775/mens-t-shirt-500x500.jpg'),
                  const Text('Mens T Shirt',style: TextStyle(color: Colors.black)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("220 \$",style: TextStyle(fontWeight:  FontWeight.bold),),
                      IconButton(onPressed: null, icon: Icon(Icons.shopping_cart))
                    ],
                  ),
                ],
              )
            ),
          ),
        );
  }
}