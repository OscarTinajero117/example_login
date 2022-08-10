import 'package:example_login/app/routers/app_routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  ///Ir al login
  void toLogin() {
    Get.offNamed(AppRoutes.LOGIN);
  }

  ///Ir al sign up
  void toSignUp() {
    Get.offNamed(AppRoutes.SIGN_UP);
  }
}
