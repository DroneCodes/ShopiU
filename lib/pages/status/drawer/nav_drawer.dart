import 'package:flutter/material.dart';
import 'package:moni_test/drawer/dawer_item.dart';
import 'package:moni_test/drawer/drawerheader.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';
import 'package:moni_test/pages/drawerpages/devinfo.dart';
import 'package:moni_test/pages/drawerpages/logout.dart';
import 'package:moni_test/pages/drawerpages/settings.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: Column(
            children: [
              DrawerHead(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                  name: "Settings",
                  icon: Icons.settings,
                  onPress: () => onItemPressed(context, index: 0)
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: "Developer Info",
                  icon: Icons.person,
                  onPress: () => onItemPressed(context, index: 1)
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: "Logout",
                  icon: Icons.logout,
                  onPress: () => onItemPressed(context, index: 2)
              ),
            ],
          ),
        ),
      ),
    );
  }

  onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Settings()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Devinfo()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogOut()));
        break;
      default:
        break;
     }
  }
}
