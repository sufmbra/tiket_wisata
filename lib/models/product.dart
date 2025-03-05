// models/product.dart

class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

// Dummy data
List<Product> dummyProducts = [
  Product(name: 'Tiket Pantai', price: 50000, image: 'assets/pantai.jpg'),
  Product(name: 'Tiket Gunung', price: 75000, image: 'assets/gunung.jpg'),
  Product(name: 'Tiket Museum', price: 30000, image: 'assets/museum.jpg'),
];
