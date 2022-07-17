import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:qr_menu_panel/app/home/home_screen.dart';
import 'package:qr_menu_panel/app/root/screens/large_screen/menu_large.dart';
import 'package:qr_menu_panel/core/utils/responsive/route_container.dart';
import 'package:qr_menu_panel/core/utils/theme/dark_theme.dart';
import 'package:qr_menu_panel/core/utils/theme/light_theme.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: RouteContainer(
        child: Row(
          children: [
            const MenuLarge(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: GetMaterialApp(
                theme: LightTheme.lightTheme,
                darkTheme: DarktTheme.darkTheme,
                themeMode: ThemeMode.dark,
                home: const HomeScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
