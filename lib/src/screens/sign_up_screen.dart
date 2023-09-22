import 'package:flutter/material.dart';
import 'package:manager_app/src/screens/home_screen.dart';
import 'package:manager_app/src/screens/login_screen.dart';

import '../const/app_color.dart';
import '../const/app_font.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset("assets/images/signup.png"),
              
              Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: TextField(
                          controller: usernamecontroller,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "User Name",
                              hintStyle: primaryFont.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
                    child: Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: TextField(
                          controller: passwordcontroller,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Mobile Number",
                              hintStyle: primaryFont.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                     Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 15),
                      child: InkWell(
                        onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const HomeScreen()),
                         );
                        },
                        child: Container(
                          height: 55,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: primaryColor, borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "SignUp",
                            style: primaryFont.copyWith(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                  ),
                  // Image.asset("assets/icons/pos_logo.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                            "Already have an accoun?",
                            style: primaryFont.copyWith(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                          onTap: (){
                           Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const LoginScreen()),
                         );
                        },
                            child: Text(
                              "Login",
                              style: primaryFont.copyWith(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                    ],
                  ),
                  ]
                  ),
        ),
      ),
              
      );
  }
}