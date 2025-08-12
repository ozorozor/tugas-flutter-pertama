import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:latihan1/login_page.dart';
import 'package:latihan1/pages/calc_page.dart';
import 'package:latihan1/routes/pages.dart';
import 'package:latihan1/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: CalculatorPage(),
      initialRoute: AppRoutes.CalcController,
      getPages: AppPages.pages,
    );
  }
}
