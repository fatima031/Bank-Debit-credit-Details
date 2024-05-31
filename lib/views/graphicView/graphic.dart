import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:flutter/material.dart';

class Graphic_View extends StatelessWidget {
  const Graphic_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColors.whiteTextColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 90),
        child: Center(
          child: Container(
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
                      child: Text("Jan", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
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
                        height: 175,
                        width: 30,
                      ),
                    ),
                    Container(
                      child: Text("Feb", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
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
                      child: Text("Mar", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
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
                      child: Text("April", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
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
                      child: Text("May", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
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
                      child: Text("june", style: TextStyle(fontSize: 10, color: CustomeColors.bgLight2),),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                
              ],
            ),
          ),
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
