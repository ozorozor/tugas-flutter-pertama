import 'package:get/get.dart';
import 'package:latihan1/pages/calc_page.dart';
import 'package:latihan1/pages/football_edit_page.dart';
import 'package:latihan1/pages/football_page.dart';
import 'package:latihan1/pages/bottom_nav_page.dart';
import 'package:latihan1/pages/profile_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => const BottomNavPage()),
    GetPage(name: AppRoutes.CalcController, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballeditplayers, page: () => FootballEditPage()),
    GetPage(name: AppRoutes.profilepage, page: () => ProfilePage()),
  ];
}
