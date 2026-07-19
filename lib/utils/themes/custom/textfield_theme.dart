import 'package:flutter/material.dart';

class TextfieldTheme {
  TextfieldTheme._();

  static final alpha = (0.8 * 255).round();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(

    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withAlpha(alpha),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),

    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
  );

  // static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  //   errorMaxLines: 2,
  //   prefixIconColor: AppColors.darkerGrey,
  //   suffixIconColor: AppColors.darkerGrey,
  //   labelStyle: const TextStyle().copyWith(
  //     fontSize: AppSize.fontSizeMd,
  //     color: AppColors.whiteColor,
  //   ),
  //   hintStyle: const TextStyle().copyWith(
  //     fontSize: AppSize.fontSizeSm,
  //     color: AppColors.whiteColor,
  //   ),
  //   errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
  //   floatingLabelStyle: const TextStyle().copyWith(
  //     color: AppColors.whiteColor.withAlpha(alpha),
  //   ),
  //   border: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
  //     borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
  //   ),

  //   enabledBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
  //     borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
  //   ),

  //   focusedBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
  //     borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
  //   ),

  //   errorBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
  //     borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
  //   ),

  //   focusedErrorBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
  //     borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
  //   ),
  // );
}
