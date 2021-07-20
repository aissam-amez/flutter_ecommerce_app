import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_ecommerce_app/src/apis/apis.dart';
import 'package:flutter_ecommerce_app/src/model/product_list.dart';

Future<ProductList> loadProductsByIdService() async {
  ProductList products;

  final response = await http.post(Uri.parse(Products),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      },
      encoding: Encoding.getByName("utf-8"));

  if (response.body.isNotEmpty) {
    if (response.statusCode == 200) {
      products = ProductList.fromJson(json.decode(response.body));
    }
  } else {
    throw Exception('echec de chargement des produits');
  }

  return products;
}
