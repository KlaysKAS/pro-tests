import 'dart:ui';

import 'package:flutter/material.dart';

import '../const.dart';

class PaddingThemeExtention extends ThemeExtension<PaddingThemeExtention> {
  final double paddingBetweenSmall;
  final double paddingBetweenStandart;
  final double paddingBetweenLarge;

  const PaddingThemeExtention({
    this.paddingBetweenSmall = Const.paddingBetweenSmall,
    this.paddingBetweenStandart = Const.paddingBetweenStandart,
    this.paddingBetweenLarge = Const.paddingBetweenLarge,
  });

  @override
  ThemeExtension<PaddingThemeExtention> copyWith({
    paddingBetweenSmall = Const.paddingBetweenSmall,
    paddingBetweenStandart = Const.paddingBetweenStandart,
    paddingBetweenLarge = Const.paddingBetweenLarge,
  }) =>
      const PaddingThemeExtention(
        paddingBetweenSmall: Const.paddingBetweenSmall,
        paddingBetweenStandart: Const.paddingBetweenStandart,
        paddingBetweenLarge: Const.paddingBetweenLarge,
      );

  @override
  ThemeExtension<PaddingThemeExtention> lerp(PaddingThemeExtention other, double t) => PaddingThemeExtention(
        paddingBetweenSmall: lerpDouble(paddingBetweenSmall, other.paddingBetweenSmall, t) ?? paddingBetweenSmall,
        paddingBetweenStandart:
            lerpDouble(paddingBetweenStandart, other.paddingBetweenStandart, t) ?? paddingBetweenStandart,
        paddingBetweenLarge: lerpDouble(paddingBetweenLarge, other.paddingBetweenLarge, t) ?? paddingBetweenLarge,
      );
}
