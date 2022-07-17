import 'package:flutter/material.dart';
import 'package:qr_menu_panel/core/constants/app_color.dart';

class RouteContainer extends StatelessWidget {
  const RouteContainer({Key? key, required this.child, this.backgroundColor})
      : super(key: key);
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 16,
        horizontal: MediaQuery.of(context).size.width / 16,
      ),
      decoration: BoxDecoration(
        gradient: backgroundColor == null
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Color(0xFF5EBDE0),
                ],
              )
            : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
