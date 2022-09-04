import 'package:flutter/material.dart';
import 'package:login_chat_app/model/constant.dart';
import '../page/page_one.dart';
import '../page/page_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: blueColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: const Center(child: Text("Chat")),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Talk"),
                Tab(text: "Profi"),
                Tab(text: "Calls"),
              ],
            )),
        body: const TabBarView(children: [
          PageOne(),
          PageTwo(),
          Center(child: Text("data", style: TextStyle(fontSize: 20))),
        ]),
      ),
    );
  }
}