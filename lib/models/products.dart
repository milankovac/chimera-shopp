import 'package:flutter/foundation.dart';

import './product.dart';
class Products with ChangeNotifier{
  static final products = [
    Product(
      id : '1',
      name: 'Nike Dunk Low "Georgetown" Blue',
      price: 73,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DO6/DO6714-001/images/thumbs_600/DO6714-001_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '2',
      name: 'Nike Blazer Mid 77 Neutrals',
      price: 65,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DD8/DD8024-300/images/thumbs_600/DD8024-300_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '3',
      name: 'Nike Air Max 1 Patta - Noise Aqua',
      price: 69,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DD8/DD8024-200/images/thumbs_600/DD8024-200_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '4',
      name: 'Nike LDWaffle',
      price: 69,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DB9/DB9953-800/images/thumbs_600/DB9953-800_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '5',
      name: 'Nike VaporWaffle ',
      price: 65,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DC8/DC8874-001/images/thumbs_600/DC8874-001_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '6',
      name: 'Nike Air Max 1 ',
      price: 71,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DH9/DH9767-001/images/thumbs_600/DH9767-001_600_600px.jpg',
      favorite: false,
    ),
     Product(
      id : '7',
      name: 'Nike LD Waffle Grey DH3114 001',
      price: 70,
      image: 'https://www.tike.rs/files/thumbs/files/images/products/media/DD8/DD8025-101/images/thumbs_600/DD8025-101_600_600px.jpg',
      favorite: false,
    ),
  ];



   void changeFavorite(String productId)
  {
    var index =  products.indexWhere((element) => element.id == productId);
    var currState = products[index].favorite;
    if(currState)
    {
      products[index].favorite = false;
    }else{
      products[index].favorite = true;
    }
     notifyListeners();
  }

}
