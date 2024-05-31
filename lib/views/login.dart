import 'dart:js';

import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/btns/custome_buttons.dart';
import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/utils/thexField/textField.dart';
import 'package:bankdetails/views/homeView.dart';
import 'package:bankdetails/views/main_page.dart';
import 'package:bankdetails/views/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Login_View extends StatelessWidget {
  Login_View({super.key});

  HomeController homeControl = Get.put(HomeController());
  addLogin() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: homeControl.emailController.text,
          password: homeControl.passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    Get.to(() => Main_Page());
    // Navigator.push(
    // context, MaterialPageRoute(builder: (context) => Home_View()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 0, 5, 10),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Image.asset("assets/images/myBank.png"),
              ),
              Container(
                child: Column(
                  children: [
                    MyTextField(
                        hintText: "Email",
                        obscureText: false,
                        controller: homeControl.emailController),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        hintText: "Password",
                        obscureText: true,
                        controller: homeControl.passwordController),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            Get.off(() => Register());
                          },
                          child: Text("Dont Have Account? Sign Up")),
                    ),
                    My_Button(
                        text: "Login",
                        onTap: () {
                          addLogin();
                        })

                    // ElevatedButton(
                    //     onPressed: () {
                    //       addLogin();
                    //     },
                    //     child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
