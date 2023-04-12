import 'package:get/get.dart';

import 'cadastro_controller.dart';

class CadastroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CadastroController>(
      () => CadastroController(),
    );
  }
}
