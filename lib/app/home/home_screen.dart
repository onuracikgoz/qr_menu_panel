import 'package:flutter/material.dart';
import 'package:qr_menu_panel/app/home/screens/large_screen/home_screen_large.dart';
import 'package:qr_menu_panel/core/utils/responsive/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: ResponsiveWidget(
        largeScreen: HomeScreenLarge(),
      ),
    );
  }
}
