import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MasterLayout extends StatelessWidget {
  const MasterLayout({
    Key? key,
    required this.body,
    required this.press,
  }) : super(key: key);

  final Widget body;
  final VoidCallback press;

  Widget sideMenu() {
    return ListView(
      shrinkWrap: true,
      children: [
        menu("Dashboard"),
        menu("Transaction"),
        menu("Task"),
        menu("Documents"),
        menu("Store"),
        menu("Notification"),
        menu("Profile"),
        menu("Settings"),
      ],
    );
  }

  Widget menu(String menuName) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        "assets/icons/menu_dashbord.svg",
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        menuName,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Drawer(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(40, 40, 54, 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      sideMenu(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
