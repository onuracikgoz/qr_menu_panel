import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
            ),
          ],
        ),
      ),
    );
  }
}
