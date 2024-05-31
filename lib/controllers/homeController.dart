import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();
   TextEditingController amountValue = TextEditingController();

  var transactions = <Map<String, String>>[
    {'title': 'Stripe Payment', 'amount': '+2,085.60', 'date': '06 May 2024'},
    {'title': 'PayPal Payment', 'amount': '+800.32', 'date': '10 May 2024'},
    {'title': 'JazzCash', 'amount': '-85.60', 'date': '12 May 2024'},
  ].obs;

  void addTransaction(String title, String amount, String date) {
    transactions.add({'title': title, 'amount': amount, 'date': date});
    update();
  }
}





// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmedPasswordController = TextEditingController();
//    TextEditingController amountValue = TextEditingController();

//     var counterValue = 0;
//   List historyData = [];
  

//   // get list1 => null;

//   // addValue() {
//   addValue() {
//     // counterValue.value++;
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
//     // List.add({
//     //   "creadit" : "1000"},
//     //   {
//     //   "debit" : "500"
//     // });

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
//   }
