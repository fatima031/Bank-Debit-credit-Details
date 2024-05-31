import 'dart:js';

import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/btns/custome_buttons.dart';
import 'package:bankdetails/utils/thexField/textField.dart';
import 'package:bankdetails/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Register extends StatelessWidget {
  Register({super.key});
  HomeController homeControl = Get.put(HomeController());

  accountRegister() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: homeControl.emailController.text,
        password: homeControl.passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print("password used");
      }
    } catch (e) {
      print(e);
    }
    Get.to(() => Login_View());
    // Get.offAll(() => Login_View());
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
                    MyTextField(
                        hintText: "Confirm Password",
                        obscureText: true,
                        controller: homeControl.confirmedPasswordController),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {
                            Get.off(() => Login_View());
                          },
                          child: Text("Already have an account? Login")),
                    ),
                    My_Button(
                        text: "Signin",
                        onTap: () {
                          accountRegister();
                        })

                    // ElevatedButton(
                    //     onPressed: () {
                    //       accountRegister();
                    //     },
                    //     child: Text("Sign In"))
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
