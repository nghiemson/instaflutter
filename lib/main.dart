import 'package:flutter/material.dart';
import 'package:instaflutter/responsive/mobile_screen_layout.dart';
import 'package:instaflutter/responsive/responsive_layout.dart';
import 'package:instaflutter/responsive/web_screen_layout.dart';
import 'package:instaflutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instaflutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
