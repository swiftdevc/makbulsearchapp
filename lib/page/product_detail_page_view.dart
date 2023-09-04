// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductDetailPageView extends StatelessWidget {
  const ProductDetailPageView({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productCode,
    required this.productPrice,
  }) : super(key: key);

  final String productName;
  final String productImage;
  final int productCode;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productName.toString(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(productImage),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Ürün kodu : ${productCode.toString()}',
            style: ProjectStyle.textStyle ?? ThemeData.light().textTheme.titleLarge,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Ürün fiyatı : ${productPrice.toString()}',
            style: ProjectStyle.textStyle ?? ThemeData.light().textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

class ProjectStyle {
  static TextStyle? textStyle = ThemeData.light().textTheme.titleLarge;
}
