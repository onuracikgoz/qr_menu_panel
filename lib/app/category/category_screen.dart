import 'package:flutter/material.dart';
import 'package:qr_menu_panel/app/category/screens/large_screen/category_large.dart';
import 'package:qr_menu_panel/core/utils/responsive/layout.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  static const String $PATH = '/categoryPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: ResponsiveWidget(
        largeScreen: CategoryScreenLarge(),
      ),
    );
  }
}
