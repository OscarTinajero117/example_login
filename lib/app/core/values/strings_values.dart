import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/strings_model.dart';
import '../../data/services/local/strings_services.dart';

class StringsValues {
  final StringsServices _stringServices = Get.find<StringsServices>();

  TextStyle liquidTextStyle({
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
  }) {
    StringsModel model = _stringServices.getStringsSize();
    return TextStyle(
      fontSize: model.liquidText,
      fontWeight: fontWeight,
      color: color,
    );
  }

  TextStyle title({
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
  }) {
    StringsModel model = _stringServices.getStringsSize();
    return TextStyle(
      fontSize: model.titleText,
      fontWeight: fontWeight,
      color: color,
    );
  }

  TextStyle subTitle({
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.black,
  }) {
    StringsModel model = _stringServices.getStringsSize();
    return TextStyle(
      fontSize: model.subTitleText,
      fontWeight: fontWeight,
      color: color,
    );
  }

  TextStyle normalText({
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    StringsModel model = _stringServices.getStringsSize();
    return TextStyle(
      fontSize: model.normalText,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
