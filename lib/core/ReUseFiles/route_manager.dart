import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/home_screen.dart';

import '../../features/onBoarding/on_boarding_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    "onB": (context) => const OnBoardingPage(),
    "HomePage": (context) => const HomeScreen(),

  };
}

class RouteName {
  static const String  initRouteOnB = "onB";
}
