import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rail_ease/pages/basic_page%20.dart';
import 'package:rail_ease/pages/edit_profile.dart';
import 'package:rail_ease/pages/notifications.dart';
import 'package:rail_ease/pages/scan_qr.dart';
import 'package:rail_ease/pages/settings.dart';
import 'package:rail_ease/pages/train_location.dart'; // Import TrainLocation page

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
        title: const Text('Logout Confirmation'),
        content: const Text(
            "Are you sure you want to log out? You'll need to login again to use the app."),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              // Perform logout logic here
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pop(); // Close the dialog
              Navigator.pushReplacementNamed(
                  context, '/login'); // Navigate to home page
            },
            child: const Text('Logout'),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomeGoogleMap(),
            ),
          );
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
        title: const Text('Menu'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              menuItem.title,
                              style: const TextStyle(
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
