import 'dart:async';
import 'package:bankdetails/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => splash_viewState();
}

class splash_viewState extends State<splash_view> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Get.offAll(() => Login_View());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Container(
          width: Get.width,
          alignment: Alignment.center,
          child:
              // Image.asset("assets/images/bankingimage.jpg"),
              Image.asset(
            "assets/images/splashCard.jpeg",
            fit: BoxFit.fitHeight,
          )),
    ));
  }
}
