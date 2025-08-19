import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/routes/pages.dart';
import 'package:latihan1/routes/routes.dart';
import 'package:latihan1/pages/bottom_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan Bottom Nav',
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
