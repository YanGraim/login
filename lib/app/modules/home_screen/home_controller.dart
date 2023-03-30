// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final getStorge = GetStorage();
  var name = "";
  @override
  void onInit() {
    super.onInit();
    name = getStorge.read("name");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
