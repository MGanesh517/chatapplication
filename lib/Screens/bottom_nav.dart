import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/Common/custom_appbar/custom_appbar.dart';
import 'package:my_project/Common/svginsidecontainer/svg_inside_ont.dart';
import 'package:my_project/Screens/Calls/call_screen.dart';
import 'package:my_project/Screens/Contacts/contact_screen.dart';
import 'package:my_project/Screens/Messages/message_screen.dart';
import 'package:my_project/Screens/Settings/setting_screen.dart';

class BottomNav extends StatefulWidget {
  final int currentIndex;

  const BottomNav({super.key, this.currentIndex = 0});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late PageController _pageController;
  late int _currentIndex;
  String appbarTitle = "Home";
  final int maxCount = 5;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
    _pageController = PageController(initialPage: _currentIndex);
    _updateAppBarTitle(_currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _updateAppBarTitle(int index) {
    switch (index) {
      case 0:
        appbarTitle = "Home";
        break;
      case 1:
        appbarTitle = "Calls";
        break;
      case 2:
        appbarTitle = "Contacts";
        break;
      case 3:
        appbarTitle = "Settings";
        break;
      default:
        appbarTitle = "Home";
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const MessageScreen(),
      const CallScreen(),
      const ContactScreen(),
      const SettingScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xff000e08),
      appBar: AppBarInside(
        centerTitle: true,
        leadingChild: const CircularContainerWithSVG(
          firstImage: 'assets/images/magnifier.svg',
        ),
        leadingLink: () {},
        titleChild: Center(
          child: Text(
            appbarTitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        actionsWidget: const [
          StoryAvator(
            firstImage: 'assets/images/userimage.png',
            height: 45,
            width: 45,
          ),
          SizedBox(width: 24),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/message.svg'),
                  activeIcon: SvgPicture.asset('assets/images/Messagecol.svg'),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/Call.svg'),
                  activeIcon: SvgPicture.asset('assets/images/callcol.svg'),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/contact.svg'),
                  activeIcon: SvgPicture.asset('assets/images/contactcol.svg'),
                  label: 'Contacts',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/settings.svg'),
                  activeIcon: SvgPicture.asset('assets/images/settingcol.svg'),
                  label: 'Settings',
                ),
              ],
              currentIndex: _currentIndex,
              onTap: (index) {
                log('current selected index $index');
                setState(() {
                  _currentIndex = index;
                  _updateAppBarTitle(index);
                  _pageController.jumpToPage(index);
                });
              },
            )
          : null,
    );
  }
}
