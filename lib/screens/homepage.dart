import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Calls.dart';
import 'package:whatsapp/screens/Chats.dart';
import 'package:whatsapp/screens/Login/UserName.dart';
import 'package:whatsapp/screens/People.dart';
import 'package:whatsapp/screens/Settings.dart';
import 'package:whatsapp/states/lib.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var screens = [Chats(), Calls(), People(), SettingScreen()];

  @override
  void initState() {
    chatState.refreshChatsForCurrentUser();
    usersState.initUsersListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              label: "Chats",
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            BottomNavigationBarItem(
              label: "Calls",
              icon: Icon(CupertinoIcons.phone),
            ),
            BottomNavigationBarItem(
              label: "People",
              icon: Icon(CupertinoIcons.person_alt_circle),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(CupertinoIcons.settings_solid),
            )
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}
