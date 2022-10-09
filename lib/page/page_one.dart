import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../model/data.dart';
import '../view/talk_screen.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //double bodyMagin = size.width / 10;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: size.height / 5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.grey[200],
            ),
            child: Expanded(
              child: ListView.builder(
                  itemCount: dataList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Colors.deepOrange),
                            shape: BoxShape.circle,
                            color: Colors.white),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.blue[600]!,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: SizedBox(
                width: double.infinity,
                height: size.height + 200,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    itemCount: dataList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      return Slidable(
                        startActionPane: ActionPane(
                          motion: const StretchMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                _onDismissed();
                              },
                              backgroundColor: Colors.green,
                              icon: Icons.share,
                              label: "share",
                            ),
                            SlidableAction(
                              onPressed: (context) {
                                _onDismissed();
                              },
                              backgroundColor: Colors.blue,
                              icon: Icons.archive,
                              label: "archive",
                            ),
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Colors.red,
                              icon: Icons.delete,
                              label: "delete",
                            )
                          ],
                        ),
                        child: ListTile(
                          onTap: () => Get.to(const TalkScreen()),
                          title: Text(dataList[index].name,
                              style: const TextStyle(
                                fontSize: 20,
                              )),
                          subtitle: Text(dataList[index].chat,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 15,
                              )),
                          leading: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                dataList[index].profile,
                              ),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              const Text("juan/11",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.call,
                                color: Colors.green[700],
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onDismissed() {}
}
