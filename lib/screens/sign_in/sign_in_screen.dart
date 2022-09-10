import 'package:chat_application/utils/helper/app_asset_images.dart';
import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:chat_application/utils/helper/app_text_style.dart';
import 'package:chat_application/utils/validators/app_validator.dart';
import 'package:chat_application/utils/widgets/custom_elevated_button.dart';
import 'package:chat_application/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _email;
  late TextEditingController _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - 150;

    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.primary,
        elevation: 0.0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: SizedBox(
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.logIn,
                      style: AppTextStyle.gilroy.copyWith(fontSize: 28.sp),
                    ),
                    SizedBox(height: 36.w),
                    //Email Text
                    const Text(
                      AppStrings.email,
                      style: AppTextStyle.gilroy,
                    ),
                    SizedBox(height: 10.w),
                    //Password
                    CustomTextField(
                      placeholder: AppStrings.yourEmail,
                      textStyle:
                          AppTextStyle.sansNormal.copyWith(fontSize: 12.sp),
                      prefixIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColors.black,
                      ),
                      validator: AppValidator.validateEmail,
                      controller: _email,
                      textInputAction: TextInputAction.next,
                      isObscure: false,
                      readOnly: false,
                    ),
                    SizedBox(height: 20.w),
                    //Password Text
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
                      textStyle:
                          AppTextStyle.sansNormal.copyWith(fontSize: 12.sp),
                      prefixIcon:
                          const Icon(Icons.password, color: AppColors.black),
                      controller: _password,
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 7.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child: Text(
                            AppStrings.forgotPassword,
                            style: AppTextStyle.sansW700.copyWith(fontSize: 12),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 20.w),
                    //Log In Button
                    CustomElevatedButton(
                      child: const Text(
                        AppStrings.logIn,
                        style: AppTextStyle.nunitoBold,
                      ),
                      buttonSize: Size(width.w, 50.w),
                      borderColor: Colors.transparent,
                      buttonColor: AppColors.whiteTwo,
                      elevation: 0.0,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Heyyyyy');
                        }
                      },
                    ),
                    SizedBox(height: 20.w),
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
                    //SignIn with google button.
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
                    const Spacer(),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: AppStrings.dontHaveAccount,
                          style: AppTextStyle.sansW400,
                          children: [
                            TextSpan(
                              text: AppStrings.signup,
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
        ),
      ),
    );
  }
}
