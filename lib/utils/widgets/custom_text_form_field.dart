// ignore_for_file: must_be_immutable

import 'package:chat_application/provider/password_provider.dart';
import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//CustomTextField to use text form field wherever needed.
class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.controller,
    this.textInputType = TextInputType.name,
    this.placeholder = "",
    this.validator,
    this.inputFormatter,
    required this.textInputAction,
    required this.isObscure,
    required this.readOnly,
    this.isPasswordField = false,
    this.prefixIcon,
    this.suffixicon,
    this.focusNode,
    this.textStyle,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType textInputType;
  final String placeholder;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputAction textInputAction;
  final bool isPasswordField;
  bool isObscure;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixicon;
  final FocusNode? focusNode;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordProvider>(
      builder: (context, passwordProvider, child) {
        return TextFormField(
          readOnly: readOnly,
          controller: controller,
          cursorColor: Colors.black,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          validator: validator,
          inputFormatters: inputFormatter,
          obscureText: isObscure,
          obscuringCharacter: '*',
          focusNode: focusNode,
          decoration: InputDecoration(
            hintStyle: textStyle,
            hintText: placeholder,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.black),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.black),
            ),
            errorBorder: const OutlineInputBorder(),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: isPasswordField
                ? IconButton(
                    splashRadius: 0.1,
                    icon: isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: AppColors.black,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: AppColors.black,
                          ),
                    onPressed: () {
                      isObscure = passwordProvider.showPassword(isObscure);
                    },
                  )
                : suffixicon,
          ),
        );
      },
    );
  }
}
