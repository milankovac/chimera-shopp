
class Product {
  final String id;
  final String name;
  final int price;
  final String image;
  bool favorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    this.favorite = false
  });
}
