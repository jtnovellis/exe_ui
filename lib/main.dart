import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
      ),
      title: 'Exercise UI',
      home: const MyHomePage(title: 'UI Exercise'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                  left: 5,
                  right: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  padding: const EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Messages',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      child: const Text(
                        'Groups',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      child: const Text(
                        'More',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                top: 15,
                left: 25,
                right: 25,
              ),
              decoration: const BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: 220,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Recents',
                        style: TextStyle(color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Jessica', 'img1.jpeg'),
                        buildContactAvatar('Maria', 'img2.jpeg'),
                        buildContactAvatar('Jorge', 'img3.jpeg'),
                        buildContactAvatar('Naya', 'img5.jpeg'),
                        buildContactAvatar('Jairo', 'img6.jpeg'),
                        buildContactAvatar('Lucas', 'img7.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 370,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.only(left: 25),
                children: [
                  buildChatRow('Jessica', 'img1.jpeg', 0, 'Yesterday?'),
                  buildChatRow('Maria', 'img2.jpeg', 3, 'Hey! How are you?'),
                  buildChatRow(
                      'Jorge', 'img3.jpeg', 3, 'How much did you spend?'),
                  buildChatRow('Naya', 'img5.jpeg', 0, 'Bullllll'),
                  buildChatRow(
                      'Jairo', 'img6.jpeg', 3, 'Hahahahah youre funny'),
                  buildChatRow('Lucas', 'img7.jpeg', 3, 'O no, was my mom'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.edit_outlined),
        onPressed: () {},
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: const [
                      UserAvatar(filename: 'img6.jpeg'),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Jairo',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const DrawerItem(
                    icon: Icons.key,
                    name: 'Account',
                  ),
                  const DrawerItem(
                    icon: Icons.chat,
                    name: 'Chats',
                  ),
                  const DrawerItem(
                    icon: Icons.notifications,
                    name: 'Notifications',
                  ),
                  const DrawerItem(
                    icon: Icons.storage,
                    name: 'Data and Storage',
                  ),
                  const DrawerItem(
                    icon: Icons.help,
                    name: 'Help',
                  ),
                  const Divider(
                    color: Colors.amberAccent,
                    height: 30,
                  ),
                  const DrawerItem(
                    icon: Icons.people_alt_outlined,
                    name: 'Invite a friend',
                  ),
                ],
              ),
              const DrawerItem(
                icon: Icons.logout,
                name: 'Log out',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildChatRow(
      String name, String filename, int msgCount, String message) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(message),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: <Widget>[
                  const Text(
                    '12:35',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.amberAccent,
                      child: Text(
                        msgCount.toString(),
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: UserAvatar(
              filename: filename,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String name;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 26),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(
              width: 35,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.filename,
  });

  final String filename;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: Image.asset('assets/images/$filename').image,
    );
  }
}
