import "package:flutter/material.dart";
import 'package:webtutorial/helpers/responsiveness.dart';
import 'package:webtutorial/widgets/large_screen.dart';
import 'package:webtutorial/widgets/small_screen.dart';
import 'package:webtutorial/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
        appBar: topNavigationBar(context, scaffoldKey),
        body: Responsiveness(
          largeScreen: LargeScreen(), 
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen(),
        ));
  }
}
