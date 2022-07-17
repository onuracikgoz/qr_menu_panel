import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_menu_panel/app/auth/screens/widget/auth_menu_item.dart';
import 'package:qr_menu_panel/core/utils/extensions/context_extention.dart';
import 'package:qr_menu_panel/core/utils/responsive/route_container.dart';
import 'package:qr_menu_panel/core/utils/widget/custom_text_field.dart';
import 'package:qr_menu_panel/core/utils/widget/primary_container.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouteContainer(
        backgroundColor: const Color(0xFFf5f5f5),
        child: Column(
          children: const [
            Menu(),
            Expanded(
              child: Body(),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              AuthMenuItem(title: 'Hakkında'),
              SizedBox(
                width: 50,
              ),
              AuthMenuItem(title: 'İletişim'),
              SizedBox(
                width: 50,
              ),
              AuthMenuItem(title: 'Yardım'),
            ],
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: PrimaryContainer(
            padding: 12,
            shadowColor: Colors.grey[300]!,
            backgroundColor: const Color(0xFFf5f5f5),
            child: _formLogin(context),
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menü oluşturmanın en kolay yolu!',
                style: context.bodyLarge.copyWith(
                  fontSize: 60,
                  height: 1,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "Hemen bir üyelik oluştur ve ücretsiz menü' nü tasarla!",
                style: context.bodySmall,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        'assets/img/qr_menu.png',
                        color: Colors.black,
                        height: 400,
                        width: 400,
                      ),
                    ),
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Image.asset(
                          'assets/img/qr_menu.png',
                          height: 400,
                          width: 400,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _formLogin(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomTextField(
          width: 300,
          hintText: "E-posta",
        ),
        const SizedBox(height: 30),
        const CustomTextField(
          width: 300,
          hintText: 'Şifre',
          obscureText: true,
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          child: const SizedBox(
            width: double.infinity,
            height: 50,
            child: Center(
              child: Text("Giriş Yap"),
            ),
          ),
          onPressed: () => print("it's pressed"),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey[300],
                height: 50,
                endIndent: 50,
                indent: 50,
              ),
            ),
            const AuthMenuItem(
              title: "Üye ol",
            ),
            Expanded(
              child: Divider(
                endIndent: 50,
                indent: 50,
                color: Colors.grey[400],
                height: 50,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300]!,
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey[400]!),
            ),
      child: Center(
        child: Container(
          decoration: isActive
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      spreadRadius: 2,
                      blurRadius: 15,
                    )
                  ],
                )
              : const BoxDecoration(),
          child: Image.asset(
            image,
            width: 35,
          ),
        ),
      ),
    );
  }
}
