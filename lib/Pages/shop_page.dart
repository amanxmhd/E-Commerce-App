import 'package:ecommerce_app/Components/my_drawer.dart';
import 'package:ecommerce_app/Components/my_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/shop.dart';
import 'cart_page.dart'; // Add this import to navigate to the cart page

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shop'),
        actions: [
          // Go to cart button
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()), // Corrected this line
            ),
            icon: const Icon(Icons.shopping_cart), // Corrected this line
          ),
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          // Shop subtitle
          Center(
            child: Text(
              "Exclusive array of top-tier offerings.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold, // Add this line for bold text
              ),
            ),
          ),


          // Product list
          SizedBox(
            height: 670,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(30),
              itemBuilder: (context, index) {
                // Get individual products from shop
                final product = products[index];

                // Return as product tile UI
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
