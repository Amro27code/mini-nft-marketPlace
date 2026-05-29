import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/route_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/on_boarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: RouteManager.routes,
      initialRoute: RouteName.initRouteOnB,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
    );
  }
}
