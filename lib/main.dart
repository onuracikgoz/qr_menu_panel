import 'dart:html';
import 'package:flutter/material.dart';
import 'package:qr_menu_panel/app/root/root_screen.dart';
import 'package:qr_menu_panel/core/utils/theme/dark_theme.dart';
import 'package:qr_menu_panel/core/utils/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var url = window.location.href;
    print(url);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.lightTheme,
      darkTheme: DarktTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const RootScreen(),
    );
  }
}
