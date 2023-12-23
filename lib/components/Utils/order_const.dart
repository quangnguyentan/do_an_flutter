import 'package:flutter/material.dart';

class order_const extends StatefulWidget {
   order_const({super.key});

  @override
  State<order_const> createState() => _order_constState();
  List<Product> products = [
    Product(name: "Roti Tori", title: 'Japanese', imageUrl: 'https://i.pinimg.com/474x/5f/94/89/5f94896f4500c50f2ac1ebc438b8d198.jpg'),
    Product(name: "Honbo", title: 'Hamburger', imageUrl: 'https://i.pinimg.com/474x/be/03/df/be03dfb45d95dba3d5906e93ae9bd284.jpg'),
    Product(name: "Moyo Sik", title: 'Japanese', imageUrl: 'https://i.pinimg.com/564x/9f/c0/14/9fc014711ba3a75ded053d067ab8d408.jpg'),
  ];
}

class _order_constState extends State<order_const> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Product {
  final String name;
  final String title;
  final String imageUrl;

  Product({required this.name, required this.imageUrl, required this.title});
}

