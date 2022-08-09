import 'package:example_login/app/data/models/abstract/abstract_model.dart';

class StringsModel implements AbstractModel<StringsModel> {
  StringsModel({
    required this.liquidText,
    required this.normalText,
    required this.titleText,
    required this.subTitleText,
  });

  final double liquidText;
  final double normalText;
  final double titleText;
  final double subTitleText;

  @override
  StringsModel copyWith({
    double? liquidText,
    double? normalText,
    double? titleText,
    double? subTitleText,
  }) =>
      StringsModel(
        liquidText: liquidText ?? this.liquidText,
        normalText: normalText ?? this.normalText,
        titleText: titleText ?? this.titleText,
        subTitleText: subTitleText ?? this.subTitleText,
      );

  factory StringsModel.fromJson(Map<String, dynamic> json) => StringsModel(
        liquidText: json["liquidText"].toDouble(),
        normalText: json["normalText"].toDouble(),
        titleText: json["titleText"].toDouble(),
        subTitleText: json["subTitleText"].toDouble(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "liquidText": liquidText,
        "normalText": normalText,
        "titleText": titleText,
        "subTitleText": subTitleText,
      };
}
