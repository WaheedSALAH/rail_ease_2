import 'package:flutter/material.dart';
import 'package:rail_ease/pages/edit_profile%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/Train_location.dart';
import 'package:rail_ease/pages/scan_qr.dart';
import 'package:rail_ease/pages/settings%20%E2%9C%94%EF%B8%8F.dart';

import 'basic_page ✔️.dart';
import 'notifications.dart'; // Import BasicPage

class MenuItem {
  final String title;
  final IconData iconData;
  final VoidCallback? onTap;

  MenuItem({
    required this.title,
    required this.iconData,
    this.onTap,
  });
}

class Menu extends StatelessWidget {
  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout Confirmation'),
        content: Text(
            "Are you sure you want to log out? You'll need to login again to use the app."),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Perform logout logic here
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = [
      MenuItem(
        title: 'Personal Information',
        iconData: Icons.person,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfile(),
            ),
          );
        },
      ),
      MenuItem(
        title: 'Train Location',
        iconData: Icons.train,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Location(),
          //   ),
          // );
        },
      ),
      MenuItem(
        title: 'Scan Code',
        iconData: Icons.qr_code,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanQr(),
            ),
          );
        },
      ),
      MenuItem(
        title: 'Notifications',
        iconData: Icons.notifications,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Notifications(),
            ),
          );
        },
      ),
      MenuItem(
        title: 'Settings',
        iconData: Icons.settings,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Settings(),
            ),
          );
        },
      ),
      MenuItem(
        title: 'Logout',
        iconData: Icons.logout,
        onTap: () => showLogoutDialog(context), // Show logout dialog
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BasicPage(), // Navigate to BasicPage
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = menuItems[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: menuItem.onTap,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
                        child: Row(
                          children: [
                            Icon(
                              menuItem.iconData,
                              size: 50,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            SizedBox(width: 16),
                            Text(
                              menuItem.title,
                              style: TextStyle(
                                color: Color(0xC1020202),
                                fontSize: 18,
                                fontFamily: 'Inika',
                                fontWeight: FontWeight.w400,
                                height: 0.06,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 0,
                      thickness: 1,
                      indent: 24,
                      endIndent: 24,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
