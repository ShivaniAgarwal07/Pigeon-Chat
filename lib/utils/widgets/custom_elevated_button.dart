import 'package:flutter/material.dart';

//Custom Elevated Button.
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.buttonColor,
    this.buttonSize,
    required this.onPressed,
    this.child,
    this.elevation,
    required this.borderColor,
  }) : super(key: key);

  final Color? buttonColor;
  final Size? buttonSize;
  final void Function()? onPressed;
  final Widget? child;
  final double? elevation;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    //Loader to show loading if an api call is made.
    // bool loader = Provider.of<UIProvider>(context).loading;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        primary: buttonColor,
        fixedSize: buttonSize,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child:
          // loader == true
          // ?
          // const CircularProgressIndicator(color: AppColors.whiteTwo)
          // :
          Center(child: child),
    );
  }
}
