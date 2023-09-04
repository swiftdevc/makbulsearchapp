import 'package:flutter/material.dart';
import 'package:makbulsearchapp/page/product_detail_page_view.dart';
import 'package:makbulsearchapp/service/product_brain.dart';

final productBrain = ProductBrain();

class ProductPageView extends StatefulWidget {
  const ProductPageView({super.key});

  @override
  State<ProductPageView> createState() => _ProductPageViewState();
}

const String appName = 'Makbul Ürün listesi';

class _ProductPageViewState extends State<ProductPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Card(
              child: ListTile(
                trailing: Text(productBrain.getProductPrice(index).toString()),
                title: Text(productBrain.getProductName(index)),
                subtitle: Text(productBrain.getProducCode(index).toString()),
                leading: Image.asset(productBrain.getProductimage(index).toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => ProductDetailPageView(
                            productPrice: productBrain.getProductPrice(index),
                            productName: productBrain.getProductName(index),
                            productCode: productBrain.getProducCode(index),
                            productImage: productBrain.getProductimage(index),
                          )),
                    ),
                  );
                },
              ),
            ),
          );
        },
        itemCount: productBrain.getLength(),
      ),
      drawer: const Drawer(
        child: Icon(Icons.info),
      ),
    );
  }
}
