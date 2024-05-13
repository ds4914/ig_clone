import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/presentation/pages/home_page/home_page.dart';
import 'package:newproject/presentation/pages/login/login_page.dart';
import 'package:newproject/presentation/pages/login/username_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Instagram Clone',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              '/loginPage': (context) => LoginPage(),
              '/homePage': (context) => const MyHomePage(),
              '/usernameScreen':(context)=> UserNameScreen(),
            },
            home: LoginPage(),
          );
        });
  }
}
