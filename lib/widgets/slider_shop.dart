import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderShop extends StatelessWidget {
  const SliderShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = ['https://www.tike.rs/files/images/2021/10/26/tike_sneakerville_playhouse_2021.jpg',
    'https://www.tike.rs/files/images/2021/11/12/tike_blog_sneakerville_2021_recap_cover_photo.jpg',
    'https://www.tike.rs/files/images/2021/9/15/tike_nike_air_max_96_II_QS_ft_drill.jpg',
    'https://www.tike.rs/files/images/2021/9/1/tike_masayah_adidas_forum_low_sneakers.jpg',
    'https://www.tike.rs/files/images/2021/6/28/1.jpg'];
    return CarouselSlider(
      options: CarouselOptions(height:170.0, autoPlay: true,autoPlayInterval: const Duration(seconds: 2)),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.network(i)
                );
          },
        );
      }).toList(),
    );
  }
}
