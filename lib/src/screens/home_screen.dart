import 'dart:io';

import 'package:flutter/material.dart';
import 'package:manager_app/src/const/app_color.dart';

import '../const/app_font.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

   logout(){
    showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white,
                        title: Column(
                          children: [
                            Image.asset('assets/images/logoutimage.png'),
                            const Text("Comeback Soon!",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ],
                        ),
                        content:const Text(
                          "Are you sure Want to Logout?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  //Get.back();
                                },
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)
                                      ),
                                  child: Center(
                                      child: Text("Cancel",
                                          style: primaryFont.copyWith(
                                              color: primaryColor))),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                 exit(0);
                                },
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      "Logout",
                                      style: primaryFont.copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,)
                        ],
     ); });
                    }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: Container(),
        titleSpacing: -30,
        title: Text("Abinash",
                style: primaryFont.copyWith(
                color: Colors.white,
                fontSize: 18,
                 fontWeight: FontWeight.w600),
             ),
             actions: [
              Padding(
                padding:const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: (){
                    logout();
                  },
                  child:const Icon(Icons.logout,color: Colors.white,)),
              ),
             ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow:const [
                  BoxShadow(
                    blurRadius: 2.5,
                    color: Colors.grey
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Employee name",
                  style: primaryFont.copyWith(
                  color: Colors.black54,
                  fontSize: 18,
                   fontWeight: FontWeight.w600),
                           ),
                  ],
                ),
              ),
            ),
          );
        }
        ),
    );
  }
}