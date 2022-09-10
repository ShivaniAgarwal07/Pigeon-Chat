import 'package:chat_application/utils/helper/app_asset_images.dart';
import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:chat_application/utils/helper/app_text_style.dart';
import 'package:chat_application/utils/widgets/custom_elevated_button.dart';
import 'package:chat_application/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      // backgroundColor: AppColors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.primary,
        elevation: 0.0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SignUp Text
                Text(
                  AppStrings.signUp,
                  style: AppTextStyle.gilroy.copyWith(fontSize: 28),
                ),
                SizedBox(height: 36.w),
                //First Name
                const Text(
                  AppStrings.firstName,
                  style: AppTextStyle.gilroy,
                ),
                SizedBox(height: 10.w),
                CustomTextField(
                  placeholder: AppStrings.yourFirstName,
                  textStyle: AppTextStyle.sansNormal.copyWith(fontSize: 12),
                  controller: _firstName,
                  textInputAction: TextInputAction.next,
                  isObscure: false,
                  readOnly: false,
                ),
                SizedBox(height: 20.w),
                //Last Name
                const Text(
                  AppStrings.lastName,
                  style: AppTextStyle.gilroy,
                ),
                SizedBox(height: 10.w),
                CustomTextField(
                  placeholder: AppStrings.yourLastName,
                  textStyle: AppTextStyle.sansNormal.copyWith(fontSize: 12),
                  controller: _lastName,
                  textInputAction: TextInputAction.next,
                  isObscure: false,
                  readOnly: false,
                ),
                SizedBox(height: 20.w),
                //Email
                const Text(
                  AppStrings.email,
                  style: AppTextStyle.gilroy,
                ),
                SizedBox(height: 10.w),
                CustomTextField(
                  placeholder: AppStrings.yourEmail,
                  textStyle: AppTextStyle.sansNormal.copyWith(fontSize: 12),
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                    color: AppColors.black,
                  ),
                  controller: _email,
                  textInputAction: TextInputAction.next,
                  isObscure: false,
                  readOnly: false,
                ),
                SizedBox(height: 20.w),
                //Password
                const Text(
                  AppStrings.password,
                  style: AppTextStyle.gilroy,
                ),
                SizedBox(height: 10.w),
                CustomTextField(
                  isObscure: true,
                  readOnly: false,
                  isPasswordField: true,
                  placeholder: AppStrings.yourPassword,
                  textStyle: AppTextStyle.sansNormal.copyWith(fontSize: 12),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: AppColors.black,
                  ),
                  controller: _password,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 10.w),
                //Terms & Conditions
                RichText(
                  text: TextSpan(
                    style: AppTextStyle.sansW400,
                    text: AppStrings.signUpDescreption,
                    children: [
                      TextSpan(
                        text: AppStrings.termsAndCondition,
                        style: AppTextStyle.sansW400.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(text: AppStrings.and),
                      TextSpan(
                        text: AppStrings.privacyPoliciy,
                        style: AppTextStyle.sansW400.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.w),
                //Sign Up Button
                CustomElevatedButton(
                  child: const Text(
                    AppStrings.continueText,
                    style: AppTextStyle.nunitoBold,
                  ),
                  buttonSize: Size(width.w, 50.w),
                  borderColor: Colors.transparent,
                  buttonColor: AppColors.whiteTwo,
                  elevation: 0.0,
                  onPressed: () {},
                ),
                SizedBox(height: 10.w),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: (width * 0.26).w,
                      child: const Divider(
                        color: AppColors.black,
                        thickness: 1.5,
                      ),
                    ),
                    const Text(AppStrings.orContinue),
                    SizedBox(
                      width: (width * 0.26).w,
                      child: const Divider(
                        color: AppColors.black,
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.w),
                //SignUp with google button.
                Center(
                  child: InkWell(
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage(AppAssetImages.google),
                          scale: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.w),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: AppStrings.alreadySignedUp,
                      style: AppTextStyle.sansW400,
                      children: [
                        TextSpan(
                          text: AppStrings.logIn,
                          style: AppTextStyle.sansW700,
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
