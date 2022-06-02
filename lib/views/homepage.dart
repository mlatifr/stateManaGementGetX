import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/productcontroller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ProductController _productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'ShopX',
                style: TextStyle(
                    fontFamily: 'avenir',
                    fontSize: 32,
                    fontWeight: FontWeight.w900),
              )),
              IconButton(icon: Icon(Icons.view_list_rounded), onPressed: () {}),
              IconButton(icon: Icon(Icons.grid_view), onPressed: () {})
            ],
          ),
        ),
        Obx(() => ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _productController.productList.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(_productController.productList[index].name);
            }))
      ]),
    );
  }
}
