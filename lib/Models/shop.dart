
import 'package:ecommerce_app/Models/products.dart';
import 'package:flutter/foundation.dart';

class Shop extends ChangeNotifier{
  //products for sale
  final List<Product> _shop = [
    Product(
      name: 'Adidas Yeezy 350 V2',
      price: 2799.99,
      description: "A LIMITED EDITION SNEAKER THAT EXEMPLIFIES THE YEEZY BRAND'S COMMITMENT TO COMFORT",
      imagePath: 'assets/ecom2.png',
    ),

    Product(
      name: 'Jacob & Co',
      price: 4300000,
      description: "WORLD TIME ZONE WATCHES, THE REALM OF THREE-DIMENSIONAL WORKS OF HOROLOGY AND ART.",
      imagePath: 'assets/ecom3.avif',
    ),

    Product(
      name: 'Zara',
      price: 1699.99,
      description: "HOODIE WITH EMBROIDERED SLOGAN",
      imagePath: 'assets/ecom5.jpg',
    ),

    Product(
      name: 'LOUIS VUITTON',
      price: 1399.99,
      description: "Hooded Silk Blend Overshirt ",
      imagePath: 'assets/ecom10.avif',
    ),

    Product(
      name: 'Zara',
      price: 3399.99,
      description: "FAUX SUEDE JACKET",
      imagePath: 'assets/ecom4.jpg',
    ),

    Product(
      name: 'Prada',
      price: 6599.99,
      description: "Stylish Prada sunglasses: luxury and modern design to elevate your look.",
      imagePath: 'assets/ecom6.avif',
    ),

    Product(
      name: 'Guchi',
      price: 7899.99,
      description: "Carry elegance with a Gucci bag, where timeless style meets modern sophistication.",
      imagePath: 'assets/ecom7.avif',
    ),

    Product(
      name: 'Apple Watch Ultra 2',
      price: 1599.99,
      description: "Where durability meets cutting-edge style.",
      imagePath: 'assets/ecom8.jpg',
    ),

    Product(
      name: 'Nike',
      price: 899.99,
      description: "Performance and style, all in one head-turning accessory.",
      imagePath: 'assets/ecom9.webp',
    ),

  ];

  //user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product Item) {
    _cart.add(Item);
    notifyListeners();
  }

//remove item from cart
  void removeFromCart(Product Item) {
    _cart.remove(Item);
    notifyListeners();
  }
}