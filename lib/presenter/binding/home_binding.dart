import 'package:get/get.dart';
import 'package:votacao_app/presenter/home_page_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxHomeController());
  }
}
