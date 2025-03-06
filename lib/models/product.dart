class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

List<Product> dummyProducts = [
  Product(name: "Tiket Wisata A", price: 50000, image: "assets/images/tiket_a.png"),
  Product(name: "Tiket Wisata B", price: 75000, image: "assets/images/tiket_b.png"),
  Product(name: "Tiket Wisata C", price: 100000, image: "assets/images/tiket_c.png"),
];
