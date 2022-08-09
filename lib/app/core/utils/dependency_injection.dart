import 'package:get/get.dart';

import '../../data/providers/local/strings_provider.dart';
import '../../data/services/local/strings_services.dart';

class DependencyInjection {
  static void init() {
    ///Providers
    Get.lazyPut<StringsProvider>(
      () => StringsProvider(),
      fenix: true,
    );

    ///Repositories
    Get.lazyPut<StringsServices>(
      () => StringsServices(),
      fenix: true,
    );
  }
}
