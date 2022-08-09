import 'package:example_login/app/data/models/strings_model.dart';
import 'package:get/get.dart';

class StringsProvider {
  StringsModel getStringsSize() {
    final double width = Get.width;
    final Map<String, double> result;
    if (width < 360) {
      result = {
        "liquidText": 40.0,
        "normalText": 12.0,
        "titleText": 18.0,
        "subTitleText": 15.0,
      };
    } else if (width < 720) {
      result = {
        "liquidText": 55.0,
        "normalText": 18.0,
        "titleText": 28.0,
        "subTitleText": 22.0,
      };
    } else if (width < 1080) {
      result = {
        "liquidText": 65.0,
        "normalText": 20.0,
        "titleText": 34.0,
        "subTitleText": 24.0,
      };
    } else {
      result = {
        "liquidText": 75.0,
        "normalText": 22.0,
        "titleText": 40.0,
        "subTitleText": 34.0,
      };
    }
    final StringsModel stringsReturn = StringsModel.fromJson(result);
    return stringsReturn;
  }
}
