import 'package:flutter/material.dart';
import 'package:latihan1/controllers/calc_controller.dart';
import 'package:latihan1/routes/routes.dart';
import 'package:latihan1/widget_button.dart';
import 'package:latihan1/widget_textfields.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalcController calcController = Get.put(CalcController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextfield(
              controller: calcController.txtAngka1,
              labeltext: "angka 1",
            ),
            CustomTextfield(
              controller: calcController.txtAngka2,  // pastikan ini beda dari angka1
              labeltext: "angka 2",
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "+",
                    textColor: Colors.blue,
                    onPressed: () {
                      calcController.tambah();
                    },
                  ),
                  CustomButton(
                    text: "-",
                    textColor: Colors.blue,
                    onPressed: () {
                      calcController.kurang();
                    },
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  CustomButton(
                    text: "x",
                    textColor: Colors.blue,
                    onPressed: () {
                      calcController.kali();
                    },
                  ),
                  CustomButton(
                    text: "/",
                    textColor: Colors.blue,
                    onPressed: () {
                      calcController.bagi();
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

        Obx(() {
              return Text(
                'hasil: ' + calcController.hasil.value.toString(),
              );
            }),

            SizedBox(height: 20),

            CustomButton(
              text: "Move to Football Players",
              textColor: Colors.red,
              onPressed: () {
                // calcController.clear();
                Get.toNamed(AppRoutes.footballplayers);
              },
            ),
          ],
        ),
      ),
    );
  }
}
