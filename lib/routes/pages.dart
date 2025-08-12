import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:latihan1/pages/calc_page.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/pages/football_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages {
  // list atau array yang isinya kumpulan page kita
  static final pages = [
    GetPage(name: AppRoutes.CalcController, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballeditplayers, page: () => FootballEditPage()),
  ];
  

}