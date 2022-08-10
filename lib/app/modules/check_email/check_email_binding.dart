import 'package:get/get.dart';

import 'check_email_controller.dart';

class CheckEmailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckEmailController>(() => CheckEmailController());
  }
}
