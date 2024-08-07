import 'package:clean_cycle/components/my_drawer_tile.dart';
import 'package:clean_cycle/pages/Home_page.dart';
import 'package:clean_cycle/pages/contribute_history.dart';
import 'package:clean_cycle/pages/settings_page.dart';
import 'package:clean_cycle/services/auth/logout.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.onProfileTap});
  final void Function()? onProfileTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(height: 30),

            MyDrawerTile(
              text: "Profile",
              imageUrl:
                  'https://example.com/user-profile.jpg', // Replace with actual URL
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            // home list file
            MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),

            MyDrawerTile(
              text: "P R O F I L E",
              icon: Icons.person,
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),

            // settings list tile
            MyDrawerTile(
                text: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  //Pop drawer
                  Navigator.pop(context);

                  //go to settings page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                }),

            // history list tile
            MyDrawerTile(
                text: "H I S T O R Y",
                icon: Icons.history,
                onTap: () {
                  // Pop drawer
                  Navigator.pop(context);

                  // Go to history page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const historyPage(),
                    ),
                  );
                }),

            const Spacer(),
            // Logout list tile
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("L O G O U T"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogoutPage()),
                );
              },
            ),
            const Spacer(),

            const SizedBox(height: 25),
          ],
        ));
  }
}
