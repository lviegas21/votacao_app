import 'package:get/get.dart';

import '../login_page_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxLoginPageController());
  }
}
