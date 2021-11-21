import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderShop extends StatelessWidget {
  const SliderShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = ['https://www.270shop.com/skin/1792b.jpg','https://www.270shop.com/skin/1792a.jpg','https://www.masports.co.uk/ekmps/shops/37b2ca/resources/design/VodWhRaQ.jpeg','https://www.masports.co.uk/ekmps/shops/37b2ca/resources/design/Heelys%20Spring%20Summer%202018%20Product%20Web%20Banner%20A%201920x700.jpg','https://www.masports.co.uk/ekmps/shops/37b2ca/resources/design/kgb-bb.gif','https://www.masports.co.uk/ekmps/shops/37b2ca/resources/design/htKR9wMA.jpeg'];
    return CarouselSlider(
      options: CarouselOptions(height:150.0, autoPlay: true,),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: 250,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.network(i)
                );
          },
        );
      }).toList(),
    );
  }
}
