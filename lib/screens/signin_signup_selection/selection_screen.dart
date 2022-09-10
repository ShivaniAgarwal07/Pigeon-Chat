import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:chat_application/utils/helper/app_text_style.dart';
import 'package:chat_application/utils/helper/routes.dart';
import 'package:chat_application/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.primaryTwo,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.4,
              0.8,
            ],
          ),
        ),
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.chatApplication,
              style: AppTextStyle.nunitoBold.copyWith(
                color: AppColors.whiteTwo,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 20.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  buttonSize: Size((width * 0.25).w, (height * 0.05).h),
                  borderColor: AppColors.transparent,
                  buttonColor: AppColors.whiteTwo,
                  elevation: 0.0,
                  child: const Center(
                    child: Text(
                      AppStrings.signin,
                      style: AppTextStyle.nunitoBold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteGenerator.signInScreenRoute);
                  },
                ),
                SizedBox(width: 20.w),
                CustomElevatedButton(
                  buttonSize: Size((width * 0.25).w, (height * 0.05).h),
                  borderColor: Colors.transparent,
                  buttonColor: AppColors.whiteTwo,
                  elevation: 0.0,
                  child: const Center(
                    child: Text(
                      AppStrings.signup,
                      style: AppTextStyle.nunitoBold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteGenerator.signUpScreenRoute);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
