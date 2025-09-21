import 'package:delivery_app/components/my_drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding:const EdgeInsets.only(top: 100),
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

          // home list title
          MyDrawerTile(
            text: "H O M E", 
            icon: Icons.home, 
            onTap: () => Navigator.pop(context)
          ),


          // seting list title
          MyDrawerTile(
            text: "S E T I N G", 
            icon: Icons.settings, 
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()
              ));
            }
          ),
          
          const Spacer(),

          // logout list title
          MyDrawerTile(
            text: "L O G O U T", 
            icon: Icons.logout, 
            onTap: () {}
          ),
        ],
      ),
    );
  }
  

}