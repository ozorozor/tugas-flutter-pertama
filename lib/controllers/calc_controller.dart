import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcController extends GetxController{
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var hasil = "".obs;
  var result = "".obs;

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    result.value = "";
}

  void tambah(){
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    int hasilJumlah = angka1+angka2;
    hasil.value = hasilJumlah.toString();
  }
  void kurang(){
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka2.text.toString());

    int hasilJumlah = angka1-angka2;
    hasil.value = hasilJumlah.toString();
  }
  void bagi(){
    double angka1 = double.parse(txtAngka1.text.toString());
    double angka2 = double.parse(txtAngka2.text.toString());

    double hasilJumlah = angka1/angka2;
    hasil.value = hasilJumlah.toString();
  }
  void kali(){
    int angka1 = int.parse(txtAngka1.text.toString());
    int angka2 = int.parse(txtAngka1.text.toString());

    int hasilJumlah = angka1*angka2;
    hasil.value = hasilJumlah.toString();
  }

  
}
