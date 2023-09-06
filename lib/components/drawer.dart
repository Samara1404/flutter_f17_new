import 'package:flutter/material.dart';

class Driwerse extends StatelessWidget {
  const Driwerse({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        padding: EdgeInsets.all(1),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Samara'),
            accountEmail: Text('stambekova1404@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text('SS'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.app_registration_rounded),
            title: Text(' Job Information'),
            onTap: () {},
          ),
          AboutListTile(
            icon: Icon(Icons.info),
            child: Text('About'),
            applicationIcon: Icon(Icons.local_play ),
            applicationName: 'My Piano App',  
            applicationVersion: 'Flutter_f17_new', 
            applicationLegalese: 'Samara@2023company',
            aboutBoxChildren: [],
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Exit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
