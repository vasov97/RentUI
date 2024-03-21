import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_ui/colors.dart';
import 'package:rent_ui/pages/estate_page.dart';
import 'package:rent_ui/pages/home_page.dart';
import 'package:rent_ui/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.mainGrey,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate UI',
      routes: {
        '/estate-page': (context) => const EstatePage(),
      },
      home: const HomePage(),
    );
  }
}
