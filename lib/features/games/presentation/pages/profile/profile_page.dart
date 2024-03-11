import 'package:bdl_demo/core/presentation/widgets/page_background.dart';
import 'package:bdl_demo/features/games/presentation/pages/profile/profile_view.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile".toUpperCase()),
        ),
        body: const SafeArea(
          child: Stack(
            children: [
              PageBackground(),
              ProfileView()
            ],
          ),
        ));
  }
}
