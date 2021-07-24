import 'package:flutter_ecommerce_app/src/model/product.dart';

class ProductList {
  List<Product> products;

  ProductList({
    this.products,
  });

  factory ProductList.fromJson(List<dynamic> parsedJson) {
    // ignore: deprecated_member_use
    List<Product> products = new List<Product>();
    products = parsedJson.map((i) => Product.fromJson(i)).toList();

    return new ProductList(products: products);
  }
}
