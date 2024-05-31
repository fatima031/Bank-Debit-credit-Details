import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const MyTextField(
      {super.key, required this.hintText, required this.obscureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: CustomeColors.textFieldbg),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: CustomeColors.whitePrimery),
            ),
            fillColor: CustomeColors.textFieldbg,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: CustomeColors.whitePrimery)),
      ),
    );
  }
}