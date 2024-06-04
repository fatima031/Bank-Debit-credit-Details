import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:flutter/material.dart';
// import 'package:getx_practice/utils/color.dart';

class TextComponent extends StatelessWidget {
  final String textComponentValue;
  const TextComponent({super.key, required this.textComponentValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textComponentValue,
      style: TextStyle(color: Colors.black, fontSize: 33),
    );
  }
}

class TextStyles {
  static const TextStyle header = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: CustomeColors.whiteTextColor,
  );

  static const TextStyle subHeader = TextStyle(
    fontSize: 16,
    color: CustomeColors.whiteTextColor,
  );

  static const TextStyle inputText = TextStyle(
    fontSize: 16,
    color: CustomeColors.hintDark,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 20,
    color: CustomeColors.whiteTextColor,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 16,
    color: Colors.purple,
  );
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CustomeColors.whitePrimery,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    color: CustomeColors.whiteSEcondary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: CustomeColors.hintDark,
  );

  static const TextStyle splashText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CustomeColors.hintDark,
  );
  static const TextStyle cardNumber = TextStyle(
    color: CustomeColors.whitePrimery,
    fontSize: 16,
  );

  static const TextStyle validThruLabel = TextStyle(
    color: Colors.white70,
    fontSize: 10,
  );

  static const TextStyle validThru = TextStyle(
    color: CustomeColors.whitePrimery,
    fontSize: 14,
  );

  static const TextStyle bottomNavText = TextStyle(
    color: CustomeColors.whitePrimery,
  );
  static const TextStyle cardHolder = TextStyle(
    color: CustomeColors.whitePrimery,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
}

class TextsComponent extends StatelessWidget {
  final String textComponentValue;
  const TextsComponent({super.key, required this.textComponentValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textComponentValue,
      style: TextStyle(color: CustomeColors.whitePrimery, fontSize: 33),
    );
  }
}