import 'package:chat_application/provider/password_provider.dart';
import 'package:chat_application/utils/helper/app_strings.dart';
import 'package:chat_application/utils/helper/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ScreenUtilInit(
      builder: (context, child) => const MyApp(),
      designSize: const Size(375, 690),
      minTextAdapt: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasswordProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: RouteGenerator.selectionScreenRoute,
      ),
    );
  }
}
