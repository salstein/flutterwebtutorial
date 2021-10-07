import 'package:flutter/material.dart';
import 'package:webtutorial/pages/clients/clients.dart';
import 'package:webtutorial/pages/drivers/drivers.dart';
import 'package:webtutorial/pages/overview/overview.dart';
import 'package:webtutorial/routing/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}