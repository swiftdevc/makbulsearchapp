import 'package:makbulsearchapp/service/product.dart';

class ProductBrain {
  final List<Product> _products = [
    Product(name: 'Kabuklu Ceviz', productCode: 2101, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(
        name: 'Fistik Tuzsuz Lüks', productCode: 2052, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(
        name: 'Fistik Tuzlu Lüks', productCode: 2053, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(name: 'Tuzlu Çekirdek', productCode: 2043, productPrice: 59.99, imageName: "assets/images/sampleImage.png"),
    Product(
        name: 'Tuzsuz Çekirdek', productCode: 2044, productPrice: 59.99, imageName: "assets/images/sampleImage.png"),
    Product(name: 'Kabuklu Ceviz', productCode: 2101, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(
        name: 'Fistik Tuzsuz Lüks', productCode: 2052, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(
        name: 'Fistik Tuzlu Lüks', productCode: 2053, productPrice: 99.99, imageName: "assets/images/sampleImage.png"),
    Product(name: 'Tuzlu Çekirdek', productCode: 2043, productPrice: 59.99, imageName: "assets/images/sampleImage.png"),
    Product(name: 'Tuzsuz Çekirdek', productCode: 2044, productPrice: 59.99, imageName: "assets/images/sampleImage.png")
  ];

  String getProductName(int index) {
    return _products[index].name;
  }

  int getProducCode(int index) {
    return _products[index].productCode;
  }

  String getProductimage(int index) {
    return _products[index].imageName;
  }

  double getProductPrice(int index) {
    return _products[index].productPrice;
  }

  int getLength() {
    return _products.length;
  }
}
