import 'package:flutter_application_1/models/orang.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  var orang = Orang();
  void changeUpperCase() {
    orang.nama.value = orang.nama.value.toString().toUpperCase();
  }
}
