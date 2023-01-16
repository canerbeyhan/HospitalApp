import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.labelText, this.hintText, this.icon})
      : super(key: key);

  String labelText;
  String? hintText;
  Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.8,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: icon,
            suffixIconColor: Colors.red,
            labelStyle: TextStyle(
              color: Color(0xFF2F2C7E),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xFF2F2C7E),
            )),
            border: OutlineInputBorder(),
            labelText: labelText,
            hintText: hintText),
      ),
    );
  }
}
