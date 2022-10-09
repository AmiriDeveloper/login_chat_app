import 'package:flutter/material.dart';
import 'package:login_chat_app/model/constant.dart';
import 'package:login_chat_app/view/navbar.dart';
import '../page/page_one.dart';
import '../page/page_two.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _key,
        drawer: const Navbar(),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.purple,
                blueColor,
              ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 70),
                child: Icon(Icons.search),
              )
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: IconButton(
                  onPressed: () {
                    _key.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            ),
            //  backgroundColor: blueColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: const Text("Chat"),
            centerTitle: true,
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
