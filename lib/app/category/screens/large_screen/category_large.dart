import 'package:flutter/material.dart';
import 'package:qr_menu_panel/core/utils/widget/primary_container.dart';

class CategoryScreenLarge extends StatelessWidget {
  const CategoryScreenLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: const [
                Text("categoryPage"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
