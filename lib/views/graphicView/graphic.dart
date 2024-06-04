import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/btns/custome_buttons.dart';
import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/utils/textComponents.dart';
import 'package:bankdetails/utils/thexField/textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Graphic_View extends StatelessWidget {
  Graphic_View({super.key});

  HomeController homeControl = Get.put(HomeController());
  TextEditingController expenseController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColors.whiteTextColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 90),
              child: Center(
                child: Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: CustomeColors.hintDark,
                                    height: 220,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Jan",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                      const      SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: CustomeColors.hintDark,
                                    height: 175,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Feb",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: Colors.black,
                                    height: 300,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Mar",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: CustomeColors.hintDark,
                                    height: 250,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "April",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: CustomeColors.hintDark,
                                    height: 200,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "May",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    color: CustomeColors.hintDark,
                                    height: 150,
                                    width: 30,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "june",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: CustomeColors.bgLight2),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                          child: Text("Expenses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ),
                      ),

                      MyTextField(
                          hintText: "Add Expense",
                          obscureText: false,
                          controller: homeControl.amountValue),
                      SizedBox(
                        height: 20,
                      ),
                      My_Button(
                          text: "Debit",
                          onTap: () async {
                            homeControl.addAmount();
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      My_Button(
                          text: "Credit",
                          onTap: () async {
                            homeControl.subAmount();
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SingleChildScrollView(
                child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    height: 200,
                    width: 500,
                    color: CustomeColors.hintDark,
                    child: GetBuilder<HomeController>(builder: (context) {
                      return ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: homeControl.historyData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                  title: Text(
                                      "${homeControl.historyData[index]["amount"]}"),
                                  trailing: homeControl.historyData[index]
                                              ["type"] ==
                                          "Debit"
                                      ? Icon(
                                          Icons.arrow_upward_outlined,
                                          color: Colors.red,
                                        )
                                      : Icon(
                                          Icons.arrow_downward_outlined,
                                          color: Colors.green,
                                        )),
                            );
                          });
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  myContainer( color, height, width, String text) {
//   Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Container(
//         color: color,
//         height: height,
//         width: width
//       ),
//       Container(
//         child: Text(text),
//       )
//     ],
//   );
// }
