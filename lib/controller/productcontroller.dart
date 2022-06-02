import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  List<Product> productList = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProduct();
    if (products != null) {
      productList = products;
    }
  }
}
