import 'package:flutter/material.dart';
import 'package:mpower/Config/globals.dart' as Globals;

import '../Screens/dashboard.dart';
import '../Screens/login.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print( settings);

    switch (settings.name) {
      // case '/':
      //   // if (Globals.IsLoggedIn == true) {
      //   //   return Dashboard.route();
      //   // } else {
      //   //   return Login.route();
      //   // }
      //   return Dashboard.route();

      case Dashboard.routeName:
        return Dashboard.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: 'Error'),
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text("Routing Error"),
          ),
        ));
  }
}
