import 'package:flutter/material.dart';

import '../../features/onBoarding/on_boarding_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    "onB": (context) => const OnBoardingPage(),
  };
}

class RouteName {
  static const String  initRouteOnB = "onB";
}
