import 'package:flutter/material.dart';
import 'package:qr_menu_panel/core/utils/extensions/context_extention.dart';

class AuthMenuItem extends StatelessWidget {
  final String title;
  const AuthMenuItem({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [
          Text(
            title,
            style: context.bodyMedium.copyWith(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          //   decoration: BoxDecoration(
          //     color: AppColor.purple,
          //     borderRadius: BorderRadius.circular(30),
          //   ),
          // )
        ],
      ),
    );
  }
}
