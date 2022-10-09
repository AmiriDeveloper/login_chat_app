import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: const Text('Gold  Man'),
          accountEmail: const Text("goldmansack@Yahooo.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwolB8Vh0k6W0Z75Cw4JEr01oXzraIvLRbaw&usqp=CAU",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "data:image/jpeg;base64,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",
                  ),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favorite"),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text("ontacts"),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
          ),
          title: const Text("share"),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.description),
          title: const Text("descpy"),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favorite"),
          onTap: () => null,
        ),
        const SwitchListTile(
            title: Text("light"),
            secondary: Icon(Icons.sunny),
            value: false,
            onChanged: null)
      ]),
    );
  }
}
