import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:premiere_app/donneePersonnel.dart';

import 'exports.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyDrawerState();
  }
}

PersistentTabController _controller = PersistentTabController(initialIndex: 3);

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PersistentTabView(
      context,
      controller: _controller,

      screens: [
        // premier screen
        Center(
          child: Text('Actualité'),
        ),

        // deuxième  screen
        Center(
          child: Text('Duel'),
        ),

        // troisème screen
        Center(
          child: Text('Deck'),
        ),

        // quatrième screen
        donneePersonnel(),

        Text('coucou'),
      ],

      //items: navBars(),
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.height),
          title: "Actualité",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.access_alarm_rounded),
          title: "Duel",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.ac_unit_outlined),
          title: "Deck",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle_rounded),
          title: "Donnée",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle_rounded),
          title: "Donnée",
        ),
      ],

      ////
      confineInSafeArea: true,
      //backgroundColor: Colors.black,
      backgroundColor: bleuDesign,
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.

      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style8, // Choose the nav bar style with this property.
    );

    ///
  }
}
