import 'package:flutter/material.dart';
import '../core/ReUseFiles/route_manager.dart';

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
