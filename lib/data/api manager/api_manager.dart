import 'package:dio/dio.dart';
import 'package:ieee_ecommerce/data/model/product_response.dart';

class APIManager {
  Dio dio = Dio();

  Future<List<ProductResponse>> getAllProduct() async {
    final Response<dynamic> response =
        await dio.get("https://api.escuelajs.co/api/v1/products");

    List<dynamic> data = response.data;
    return data
        .map(
          (product) => ProductResponse.fromJson(product),
        )
        .toList();
  }

  Future<ProductResponse?> searchProducts(String searchProduct) async {
    try {
      final Response<dynamic> searchResponse = await dio
          .get('https://api.escuelajs.co/api/v1/products/$searchProduct');

      var data = searchResponse.data;
      print("data is $data");

      return ProductResponse.fromJson(data);
    } catch (e) {
      print("Error: Product not found: $e");
      return null; // Return null instead of an empty object
    }
  }
}
