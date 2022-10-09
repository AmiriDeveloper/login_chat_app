import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_chat_app/login.dart';
import 'package:login_chat_app/page/page_one.dart';
import 'package:login_chat_app/view/home_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  TextEditingController instagramId = TextEditingController();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: // PageOne()
            //ProfileScreen(),
            HomePage(),
        //  LoginPage(
        // instagramId: instagramId,
        //  )
      ),
    );
  }
}
