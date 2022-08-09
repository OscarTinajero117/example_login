import 'package:example_login/app/data/models/strings_model.dart';
import 'package:example_login/app/data/providers/local/strings_provider.dart';
import 'package:get/get.dart';

class StringsServices {
  final StringsProvider _stringsProvider = Get.find<StringsProvider>();

  StringsModel getStringsSize() => _stringsProvider.getStringsSize();
}
