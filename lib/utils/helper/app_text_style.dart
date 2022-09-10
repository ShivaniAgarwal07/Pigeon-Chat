import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  //Sans

  //Sans.Normal
  static const TextStyle sansNormal = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Sans.bold
  static const TextStyle sansBold = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Sans.W400
  static const TextStyle sansW400 = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Sans.W500
  static const TextStyle sansW500 = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Sans.W600
  static const TextStyle sansW600 = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Sans.W700
  static const TextStyle sansW700 = TextStyle(
    fontFamily: AppStrings.sans,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Nunito

  //Nunito.Normal
  static const TextStyle nunitoNormal = TextStyle(
    fontFamily: AppStrings.nunito,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
  );

  //Nunito.bold
  static const TextStyle nunitoBold = TextStyle(
    fontFamily: AppStrings.nunito,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Nunito.w200
  static const TextStyle nunitoW200 = TextStyle(
    fontFamily: AppStrings.nunito,
    fontWeight: FontWeight.w200,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Nunito.w700
  static const TextStyle nunitoW700 = TextStyle(
    fontFamily: AppStrings.nunito,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );

  //Coiny
  static const TextStyle coiny = TextStyle(
    color: AppColors.black,
    fontFamily: AppStrings.coiny,
    fontSize: 48,
  );

  //GalanoGrotesque
  static const TextStyle galanoGrotesque = TextStyle(
    color: Color(0xff232323),
    fontWeight: FontWeight.w500,
    fontFamily: AppStrings.galanoGrotesque,
    fontStyle: FontStyle.normal,
    fontSize: 12.0,
  );

  //Gilroy
  static const TextStyle gilroy = TextStyle(
    fontFamily: AppStrings.gilroy,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColors.black,
  );
}
