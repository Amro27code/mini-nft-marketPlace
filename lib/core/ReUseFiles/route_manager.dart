import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/states/screens/state_screen.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/onBoarding/screens/on_boarding_page.dart';
import '../widgets/bnb.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RouteName.initRouteOnB: (context) => const OnBoardingPage(),
    RouteName.homePage: (context) => const HomeScreen(),
    RouteName.statesPage: (context) => const StatesPage(),
    // RouteName.bnb: (context) => const Bnb(),
  };
}

class RouteName {
  static const String initRouteOnB = "onB";
  static const String homePage = "HomePage";
  static const String statesPage = "StatePage";
  static const String bnb = "Bnb";
}
