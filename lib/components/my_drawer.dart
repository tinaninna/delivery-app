import 'package:delivery_app/components/my_drawer_tile.dart';
import 'package:delivery_app/pages/login_page.dart';
import 'package:delivery_app/pages/register_page.dart';
import 'package:delivery_app/pages/setting_page.dart';
import 'package:delivery_app/services/auth/auth_services.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Future<void> logout(BuildContext context) async {
    final authService = AuthServices();
    await authService.signOut();

    // Navigate to LoginPage after logout, with onTap to switch to RegisterPage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          onTap: () {}, // empty callback to avoid errors
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // Home tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // Settings tile
          MyDrawerTile(
            text: "S E T T I N G",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          ),

          const Spacer(),

          // Logout tile
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () => logout(context),
          ),
        ],
      ),
    );
  }
}
