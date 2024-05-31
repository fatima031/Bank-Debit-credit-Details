import 'package:bankdetails/utils/custome_colors/colors.dart';

import 'package:flutter/material.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomeColors.whitePrimery,
        body: Column(children: [
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
                                  color: CustomeColors.scaffoldBg,
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
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                buildBankCard(
                    "title", "amount", "change", CustomeColors.textFieldbg),
                SizedBox(
                  width: 20,
                ),
                buildBankCard(
                    "title", "amount", "change", CustomeColors.hintDark)
              ],
            ),
          )
        ]));
  }
}

Widget buildBankCard(String title, String amount, String change, Color) {
  return Expanded(
      child: Container(
    padding: EdgeInsets.all(40),
    decoration: BoxDecoration(
      color: Color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Icon(
            Icons.circle,
            size: 20,
                color: Colors.yellow,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 20,
              )),
              Icon(
            Icons.circle,
            size: 20,
                color: Colors.red,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 20,
              ))
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        amount,
        style: TextStyle(color: Colors.purple),
      )
    ]),
  ));
}
