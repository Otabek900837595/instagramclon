import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mayfeed_page.dart';
import 'mylikes_Page.dart';
import 'myprofile_page.dart';
import 'myserarch_page.dart';
import 'myupload_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController _controllerTap = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controllerTap,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          MyFeeddPage(),
          MySearchPage(),
          MyUploadPage(),
          MyLikesPage(),
          MyProfilePAge(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        activeColor: Colors.purple,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _controllerTap.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle_fill),
          )
        ],
      ),
    );
  }
}