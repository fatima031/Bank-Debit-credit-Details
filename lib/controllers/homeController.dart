// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmedPasswordController = TextEditingController();
//   TextEditingController amountValue = TextEditingController();

//   var counterValue = 0;
//   List historyData = [];
//   addValue() {
//     counterValue++;
//     counterValue--;
//     update();
//     print(counterValue);
//   }

//   addAmount() {
//     print(amountValue.text);
//     counterValue = counterValue + int.parse(amountValue.text);
//     Get.snackbar("Amont Status", "Amont Added",
//         snackPosition: SnackPosition.BOTTOM);

//     historyData.add({"amount": "${amountValue.text}", "Type": "credit"});

//     print(historyData);
//     update();
//   }

//   subAmount() {
//     print(amountValue.text);
//     counterValue = counterValue - int.parse(amountValue.text);
//     historyData.add({"amount": "${amountValue.text}", "Type": "debit"});

//     print(historyData);

//     update();
//   }

//   // var transactions = <Map<String, String>>[
//   //   {'title': 'Stripe Payment', 'amount': '+2,085.60', 'date': '06 May 2024'},
//   //   {'title': 'PayPal Payment', 'amount': '+800.32', 'date': '10 May 2024'},
//   //   {'title': 'JazzCash', 'amount': '-85.60', 'date': '12 May 2024'},
//   // ].obs;

//   // get historyData => null;

//   // void addTransaction(String title, String amount, String date) {
//   //   transactions.add({'title': title, 'amount': amount, 'date': date});
//   //   update();
//   // }
// }

// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // class HomeController extends GetxController {
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();
// //   TextEditingController confirmedPasswordController = TextEditingController();
// //    TextEditingController amountValue = TextEditingController();

// //     var counterValue = 0;
// //   List historyData = [];

// //   // get list1 => null;

// //   // addValue() {
// //   addValue() {
// //     // counterValue.value++;
// //     counterValue++;
// //     counterValue--;
// //     update();
// //     print(counterValue);
// //   }

// //   addAmount() {
// //     print(amountValue.text);
// //     counterValue = counterValue + int.parse(amountValue.text);
// //     Get.snackbar("Amont Status", "Amont Added",
// //         snackPosition: SnackPosition.BOTTOM);
// //     // List.add({
// //     //   "creadit" : "1000"},
// //     //   {
// //     //   "debit" : "500"
// //     // });

// //     historyData.add({"amount": "${amountValue.text}", "Type": "credit"});

// //     print(historyData);
// //     update();
// //   }

// //   subAmount() {
// //     print(amountValue.text);
// //     counterValue = counterValue - int.parse(amountValue.text);
// //     historyData.add({"amount": "${amountValue.text}", "Type": "debit"});

// //     print(historyData);

// //     update();
// //   }
// //   }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // var counterValue = 0.obs;
  int counterValue = 0;

  TextEditingController amountValue = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();
  TextEditingController nameValue = TextEditingController();

  List historyData = [];
  // addValue() {
  addValue() {
    // counterValue.value++;
    counterValue++;
    update();
    print(counterValue);
  }

  addAmount() {
    print(amountValue.text);
    counterValue = counterValue + int.parse(amountValue.text);
    Get.snackbar("Amount Status", "Amount Added",
        snackPosition: SnackPosition.BOTTOM);
    historyData.add({"amount": "${amountValue.text}", "type": "Credit"});
    update();

    print(historyData);
    // counterValue=
  }

  subAmount() {
    print(amountValue.text);
    counterValue = counterValue - int.parse(amountValue.text);
    Get.snackbar("Amount Status", "Amount Deducted",
        snackPosition: SnackPosition.BOTTOM);
    historyData.add({"amount": "${amountValue.text}", "type": "Debit"});
    print(historyData);

    update();
    // counterValue=
  }

  addname() {
    print(nameValue.text);
    counterValue = counterValue + int.parse(nameValue.text);
    historyData.add({
      "name": "${nameValue.text}",
    });
    print(historyData);
  }
}
