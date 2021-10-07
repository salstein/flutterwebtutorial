
import 'package:flutter/cupertino.dart';
import 'package:webtutorial/constants/controllers.dart';
import 'package:webtutorial/routing/router.dart';
import 'package:webtutorial/routing/routes.dart';




Navigator localNavigator() =>   Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );


