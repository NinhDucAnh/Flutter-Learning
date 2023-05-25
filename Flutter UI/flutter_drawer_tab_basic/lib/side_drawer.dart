import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Ninh Duc Anh'),
                accountEmail: Text('ninhducanhninh@gmail.com'),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn1.gstatic.com%2Flicensed-image%3Fq%3Dtbn%3AANd9GcQVqoqVLZxuVF5iBhtAtH3qlWcntMOZ4Fg5J3Rtm4Ia8pLlcUuHupQPAD-fnSN8YHfZa0jPndrBj04q_Gg&psig=AOvVaw0QHGhcaHkUvjM0xVBZh-r-&ust=1684073273467000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCJDSqPq78v4CFQAAAAAdAAAAABAE'),),
              ),
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(context, 'home'),
              ),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(context, 'settings'),
              ),
              ListTile(
                title: const Text('Camera'),
                leading: const Icon(Icons.camera),
                onTap: () => Navigator.pushNamed(context, 'camera'),
              ),
            ],
          ),
        ),
      )
    );
  }
}
