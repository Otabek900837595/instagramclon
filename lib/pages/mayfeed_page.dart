import 'package:flutter/material.dart';

class MyFeeddPage extends StatefulWidget {
  const MyFeeddPage({Key? key}) : super(key: key);

  @override
  State<MyFeeddPage> createState() => _MyFeeddPageState();
}

class _MyFeeddPageState extends State<MyFeeddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("myfeed"),
      ),
    );
  }
}
