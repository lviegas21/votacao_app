import 'package:get/get.dart';
import 'package:votacao_app/presenter/cadastro_page_controller.dart';

class CadastroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxCadastroPageController());
  }
}
