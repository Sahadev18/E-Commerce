import 'package:flutter/material.dart';
import '../module/Product.dart';
import 'description.dart';

class Home extends StatelessWidget {
  final List<Product> products;
  const Home({super.key, required this.products});

  Widget productTemplate(Product product) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    product.image,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '₹ ${product.price}',
                  style: const TextStyle(fontSize: 22),
                ),
                Text(
                  product.title,
                  style: const TextStyle(fontSize: 15, color: Colors.black45),
                ),
                // Text(product.description),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Description(
                              product: products[index],
                            )),
                  );
                },
                child: productTemplate(products[index]));
          },
        ));
  }
}
