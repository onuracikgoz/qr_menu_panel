import 'package:flutter/material.dart';
import 'package:qr_menu_panel/core/constants/app_color.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? shadowColor;
  final double? padding;
  const PrimaryContainer({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.shadowColor = Colors.black,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? EdgeInsets.all(padding!) : null,
      height: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColor.primaryBlack,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: shadowColor!,
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(3, 4), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
