import 'package:flutter/material.dart';
import 'package:test_project/ui/home/widget/drawer_header.dart';
import 'package:test_project/ui/home/widget/drawer_item.dart';
import 'package:test_project/ui/home/widget/drawer_login_button.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppDrawerHeader(),
          DrawerLoginButton(
            onTap: () {},
          ),
          DrawerItem(
            name: 'Notification',
            icon: Icons.notifications,
            onTap: () {},
          ),
          DrawerItem(
            name: 'My Favorites',
            icon: Icons.favorite,
            onTap: () {},
          ),
          DrawerItem(
            name: 'My Orders',
            icon: Icons.shopping_bag,
            onTap: () {},
          ),
          const Spacer(),
          DrawerItem(
            name: 'Settings',
            icon: Icons.settings,
            onTap: () {},
          ),
          DrawerItem(
            name: 'Invite a Friend',
            icon: Icons.people_alt,
            onTap: () {},
          ),
          DrawerItem(
            name: 'Help',
            icon: Icons.help,
            onTap: () {},
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
