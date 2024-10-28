import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: const Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
              radius: 60,
            ),
            SizedBox(height: kDouble20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('allomoh ange alex'),
            ),
            SizedBox(height: kDouble20),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('allomohangealex@gmial.com'),
            ),
            SizedBox(height: kDouble20),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('allomohangealexdev.com'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            isDarModeNotifier.value = !isDarModeNotifier.value;
          },
          child: ValueListenableBuilder(
            valueListenable: isDarModeNotifier,
            builder: (context, isDark, child) {
              if (isDark) {
                return const Icon(Icons.light_mode);
              }
              return const Icon(Icons.dark_mode);
            },
          ),
        ));
  }
}
