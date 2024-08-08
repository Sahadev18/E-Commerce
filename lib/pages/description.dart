import 'package:flutter/material.dart';
import '../module/Product.dart';

class Description extends StatelessWidget {
  final Product
      product; // Assuming Product is the type of data you want to pass

  const Description(
      {super.key,
      required this.product}); // Required keyword ensures product is provided

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(product.title), // Access product data here
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                product.image,
              ),
              Divider(
                height: 50,
                color: Colors.grey[350],
              ),
              Text(
                product.category,
                style: const TextStyle(fontSize: 12),
              ),
              Text(
                product.title,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                product.description,
                style: const TextStyle(fontSize: 15, color: Colors.black54),
              ),
              Divider(
                height: 50,
                color: Colors.grey[350],
              ),
              Text(
                '₹ ${product.price}',
                style: const TextStyle(fontSize: 35),
              ),
              Divider(
                height: 30,
                color: Colors.grey[350],
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      backgroundColor: Colors.yellow[700],
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ), // Access product data here
    );
  }
}
