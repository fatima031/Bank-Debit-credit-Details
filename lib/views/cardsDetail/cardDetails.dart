import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/btns/custome_buttons.dart';
import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/utils/image.dart';
import 'package:bankdetails/utils/thexField/textField.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CardsView extends StatelessWidget {
  CardsView({super.key});
  HomeController homeControl = Get.put(HomeController());
  TextEditingController expenseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColors.hintDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text("My Cards",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: CircleAvatar(
                                      child: Icon(Icons.arrow_back))))
                        ]))),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Swiper(
                  itemWidth: 500,
                  itemHeight: 225,
                  loop: true,
                  duration: 1200,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagepath[index])),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                  itemCount: imagepath.length,
                  layout: SwiperLayout.STACK,
                ),
              ),
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: CustomeColors.hintDark,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          //        GetBuilder<HomeController>(builder: (cahomeControlca) {
                          //   return Center(
                          //       child: TextComponent(
                          //           textComponentValue: "${cahomeControlca.counterValue}"));
                          // }),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Expenses",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),

                          MyTextField(
                              hintText: "Add Daily Expense",
                              obscureText: false,
                              controller: homeControl.amountValue),
                          SizedBox(
                            height: 20,
                          ),
                          My_Button(
                              text: "Add Expenses",
                              onTap: () async {
                                homeControl.addAmount();
                                
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
