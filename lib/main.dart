import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_with_firebase/screen/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(designSize: Size(375, 812), child: LoginScreen()),
    );
  }
}
