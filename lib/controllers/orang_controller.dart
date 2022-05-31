import 'package:flutter_application_1/models/orang.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: 'hermawan', umur: 19).obs;
  void changeUpperCase() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
    // orang.value.nama = orang.value.nama.toString().toUpperCase();
  }
}
