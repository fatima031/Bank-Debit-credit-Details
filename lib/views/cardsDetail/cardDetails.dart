import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/utils/image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomeColors.hintDark,
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
              image: DecorationImage(image: AssetImage(imagepath[index])),
              borderRadius: BorderRadius.circular(20),
            ),
          );
            },
            itemCount: imagepath.length,
            layout: SwiperLayout.STACK,
          ),
          ),
        )
        ]));
  }
}

// Widget buildBankCard(String title, String amount, String change, Color) {
//   return Expanded(
//       child: Container(
//     padding: EdgeInsets.all(40),
//     decoration: BoxDecoration(
//       color: Color,
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       Row(
//         children: [
//           Icon(
//             Icons.circle,
//             size: 20,
//                 color: Colors.yellow,
//           ),
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.keyboard_arrow_right_rounded,
//                 size: 20,
//               )),
//               Icon(
//             Icons.circle,
//             size: 20,
//                 color: Colors.red,
//           ),
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.keyboard_arrow_right_rounded,
//                 size: 20,
//               ))
//         ],
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Text(
//         amount,
//         style: TextStyle(color: Colors.purple),
//       )
//     ]),
//   ));
// }
