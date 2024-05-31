import 'dart:js';

import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/views/graphicView/graphic.dart';
import 'package:bankdetails/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatefulWidget {
  DashboardView({super.key});

  HomeController homeControl = Get.put(HomeController());

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  // List myList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Column(children: [
          Container(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Text("Good Morning",
                              style: TextStyle(
                                  color: CustomeColors.whiteTextColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w200)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Text("Name-Here",
                              style: TextStyle(
                                  color: CustomeColors.whiteTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )
                      ]))),
        ])),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              buildCard(
                  "Balance", "\$800.65", "+\$29578", CustomeColors.hintDark),
              SizedBox(
                width: 10,
              ),
              buildCard("Expence", "\$950.65", "+\$Sold",
                  CustomeColors.whiteSEcondary),
            ],
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              buildCard("Income", "\$800.65", "+\$20.50",
                  CustomeColors.whiteSEcondary),
              const SizedBox(
                width: 10,
              ),
              buildAddCard(),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Get.bottomSheet(
        //     Container(
        //       child: Text("Transaction",
        //         style: TextStyle(
        //             color: CustomeColors.whiteTextColor,
        //             fontWeight: FontWeight.w200,
        //             fontSize: 20)),
        //     ),
        // ),
        Expanded(
            child: ListView(
          children: [
            buildTransection("Strip Payment", "+2.005,0", "6 May 2024"),
            buildTransection("Paypal", "+2.005,0", "6 May 2024"),
            buildTransection("Stripe ", "+2.005,0", "6 May 2024"),
          ],
        )),
      ],
    );
  }
}

Widget buildCard(String title, String amount, String change, Color) {
  return Expanded(
      child: Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        amount,
        style: TextStyle(color: Colors.black),
      )
    ]),
  ));
}

buildAddCard() {
  return Container(
      height: 80,
      width: 180,
      decoration: BoxDecoration(
        color: CustomeColors.whiteSEcondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: FloatingActionButton(
          // elevation: 0,
          onPressed: () {
            Get.bottomSheet(Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 300,
              decoration: BoxDecoration(
                  color: CustomeColors.textFieldbg,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
              child: GetBuilder<HomeController>(builder: (context) {
                return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: homeControl.historyData.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text("abc"));
                    });
              }),
            ));
          },
          child: Icon(
            Icons.add,
            size: 20,
          )));
}

Widget buildTransection(String title, String amount, String data) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: CustomeColors.bgLight2,
      child: Icon(
        Icons.payment,
        color: CustomeColors.whiteTextColor,
      ),
    ),
    title: Text(
      title,
      style: TextStyle(color: CustomeColors.whiteTextColor),
    ),
    subtitle: Text(
      data,
      style: TextStyle(color: CustomeColors.whiteTextColor),
    ),
    trailing: Text(
      amount,
      style: TextStyle(color: CustomeColors.whiteTextColor),
    ),
  );
}
