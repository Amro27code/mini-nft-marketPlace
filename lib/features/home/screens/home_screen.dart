import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/home/screens/home_page.dart';
import 'package:mini_nft_marketplace/features/person/screens/person_page.dart';
import 'package:mini_nft_marketplace/features/search/screens/search_screen.dart';
import 'package:mini_nft_marketplace/features/states/screens/state_screen.dart';
import '../../../core/widgets/bnb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<Widget> lWdg = [HomePage(), StatesPage(), SearchScreen(), PersonPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: lWdg[index],
      bottomNavigationBar: Bnb(
        onPressedH: () => setState(() => index = 0),
        onPressedS: () => setState(() => index = 1),
        onPressedSearch: () => setState(() => index = 2),
        onPressedP: () => setState(() => index = 3),
      ),
    );
  }
}
