import 'package:flutter/material.dart';

// This is the type used by the popup menu below.
enum Menu { itemOne, itemTwo, itemThree, itemFour }

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<Menu>(
              onSelected: (Menu item) {
                setState(() {
                  _selectedMenu = item.name;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                    const PopupMenuItem<Menu>(
                      value: Menu.itemOne,
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemTwo,
                      child: Text('Item 2'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemThree,
                      child: Text('Item 3'),
                    ),
                    const PopupMenuItem<Menu>(
                      value: Menu.itemFour,
                      child: Text('Item 4'),
                    ),
                  ])
        ],
      ),
      body: Center(
        child: Text('_selectedMenu: $_selectedMenu'),
      ),
    );
  }
}