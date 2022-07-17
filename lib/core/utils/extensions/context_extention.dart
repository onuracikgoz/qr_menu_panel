import 'package:flutter/material.dart';

extension ThemeExtention on BuildContext {
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
}
