import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

bottomSheeet() {
  Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Transaction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                  color: CustomeColors.whiteSEcondary,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          "ABC",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          "DEF",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.thumb_down),
                              label: Text("Label")),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.thumb_down),
                              label: Text("Label")),
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
      enableDrag: false,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      elevation: 0);
}
