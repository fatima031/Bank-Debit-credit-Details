import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  
  final void Function()? onTap;
  final String text;
  
  const My_Button({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: CustomeColors.textFieldbg,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}