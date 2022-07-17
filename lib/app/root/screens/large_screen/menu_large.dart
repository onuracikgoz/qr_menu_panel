import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_menu_panel/app/category/category_screen.dart';
import 'package:qr_menu_panel/app/home/home_screen.dart';
import 'package:qr_menu_panel/core/utils/widget/primary_container.dart';
import 'package:qr_menu_panel/core/utils/widget/rounded_button.dart';

class MenuLarge extends StatelessWidget {
  const MenuLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Kafe İsmi", style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(
              height: 30,
            ),
            RoundedButton(
              title: "Anasayfa",
              onPressed: () {
                Get.to(const HomeScreen(), duration: Duration.zero);
              },
              icon: Icons.home,
            ),
            RoundedButton(
              title: "Şubeler",
              onPressed: () {},
              icon: Icons.location_on,
            ),
            RoundedButton(
              title: "Kategoriler",
              icon: Icons.kitchen_outlined,
              onPressed: () {
                Get.to(const CategoryScreen(), duration: Duration.zero);
              },
            ),
            RoundedButton(
              title: "Ürünler",
              onPressed: () {},
              icon: Icons.food_bank,
            ),
            RoundedButton(
              title: "Ayarlar",
              onPressed: () {},
              icon: Icons.settings,
            ),
            RoundedButton(
              title: "Çıkış yap",
              onPressed: () {},
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
