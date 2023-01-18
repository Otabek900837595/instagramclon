import 'package:flutter/material.dart';

class MyProfilePAge extends StatefulWidget {
  const MyProfilePAge({Key? key}) : super(key: key);

  @override
  State<MyProfilePAge> createState() => _MyProfilePAgeState();
}

class _MyProfilePAgeState extends State<MyProfilePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("myprofile"),
      ),
    );
  }
}
