import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/strings_values.dart';
import '../check_email_controller.dart';

class Otp extends GetView<CheckEmailController> {
  final bool first, last;
  final int position;
  const Otp({
    Key? key,
    required this.position,
    this.first = false,
    this.last = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 100,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            controller.checkOtpCode(value, position - 1);
            if (value.isNotEmpty && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
            if (value.isNotEmpty && last) {
              FocusScope.of(context).unfocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: StringsValues().subTitle(),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            hintText: '•',
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width: (Get.width - Get.width / 2) * 0.01,
                color: Colors.black12,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width: 2,
                color: Colors.blue.shade200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
