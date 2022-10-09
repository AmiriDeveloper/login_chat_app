import 'package:flutter/material.dart';
import 'package:get/get.dart';

// This is the type used by the popup menu below.
enum Menu { itemOne, itemTwo, itemThree, itemFour }

class MyStatefulWidget extends StatelessWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  RxString _selectedMenu = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              color: Colors.blue,
              onSelected: (Menu item) {
                _selectedMenu.value = item.name;
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
