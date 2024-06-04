
import 'package:bankdetails/controllers/homeController.dart';
import 'package:bankdetails/utils/custome_colors/colors.dart';
import 'package:bankdetails/views/Dashboard/dashboard.dart';
import 'package:bankdetails/views/addTransections/addTransections.dart';
import 'package:bankdetails/views/bottom%20sheet/sheetbottom.dart';
import 'package:bankdetails/views/cardsDetail/cardDetails.dart';
import 'package:bankdetails/views/graphicView/graphic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Main_Page extends StatefulWidget {
  Main_Page({super.key});

 
  

  @override
  State<Main_Page> createState() => _Main_PageState();
}

  HomeController homeControl = Get.put(HomeController());
 TextEditingController amountValue = TextEditingController();

class _Main_PageState extends State<Main_Page> {



  Widget currentScreen = DashboardView();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: CustomeColors.scaffoldBg,
        elevation: 0,
        leading: CircleAvatar(
            backgroundColor: CustomeColors.bgLight1,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.add))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: CustomeColors.bgLight1,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notification_add))),
                const SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/WhatsApp Image 2024-06-01 at 3.34.36 PM (1).jpeg",
                  ),
                  radius: 20,
                )
              ],
            ),
          )
        ],
      ),
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = DashboardView();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 0 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 1;
                    currentScreen =  Graphic_View();
                  });
                },
                child: Icon(
                  Icons.graphic_eq_sharp,
                  color: activeTab == 1 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 2;
                    currentScreen =  CardsView();
                  });
                },
                child: Icon(
                  Icons.payment,
                  color: activeTab == 2 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 3;
                      currentScreen = const AddTransactionView();
                    });
                  },
                  child: IconButton(
                      onPressed: () {
                        showDialog(
              
                context: Get.overlayContext!,
                builder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AlertDialog(
                    
                        title: Container(
                          
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  child: Text("Add New Transaction"),
                                ),
                              ),
                          const    TextField(
                                decoration: InputDecoration(
                                  label: Text("For What")
                                ),
                              ),
                         const     TextField(
                          
                                 decoration: InputDecoration(
                                  label: Text("Amount")
                                ),
                              ),
                           const   TextField(
                                 decoration: InputDecoration(
                                  label: Text("Change recieved"),
                        
                                  
                                ),
                              ),
                         const     SizedBox(height: 20,),
                        
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(children: [
                                  // ElevatedButton(onPressed: (){}, child: const Text("cancel")),
                              const    SizedBox(width: 20,),
                                  ElevatedButton(onPressed: (){}, child: const Text("Add")),
                                ],),
                              )
                            ],
                          ),
                        )
                      ),
                ));
                      },
                      icon: const Icon(Icons.add))),
            ],
          ),
        ),
      ),
    );
  }
}
