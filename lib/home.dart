import 'package:flutter/material.dart';

class _homePagState extends StatefulWidget {
  const _homePagState({super.key});

  @override
  State<_homePagState> createState() => __homePagStateState();
}

class __homePagStateState extends State<_homePagState> {
  final TextEditingController _angka1Controller = TextEditingController();
  final TextEditingController _angka2Controller = TextEditingController();

  String hasil = "";

  void _hitung(String operasi) {
    final String teks1 = _angka1Controller.text;
    final String teks2 = _angka2Controller.text;

    double? angka1 = double.tryParse(teks1);
    double? angka2 = double.tryParse(teks2);

    if (angka1 == null || angka2 == null) {
      setState(() {
        hasil = "Masukkan angka yang valid";
      });
      return;
    }

    double hasilOperasi = 0;

    if (operasi == '+') {
      hasilOperasi = angka1 + angka2;
    } else if (operasi == '-') {
      hasilOperasi = angka1 - angka2;
    } else if (operasi == 'x') {
      hasilOperasi = angka1 * angka2;
    } else if (operasi == '/') {
      if (angka2 == 0) {
        setState(() {
          hasil = "Tidak bisa dibagi 0";
        });
        return;
      }
      hasilOperasi = angka1 / angka2;
    }

    setState(() {
      hasil = "Hasil: $hasilOperasi";
    });
  }

  void _reset() {
    _angka1Controller.clear();
    _angka2Controller.clear();
    setState(() {
      hasil = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Kalkulator")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Kalkulator Sederhana",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _angka1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Angka pertama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _angka2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Angka kedua',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => _hitung('+'), child: const Text('+')),
                ElevatedButton(onPressed: () => _hitung('-'), child: const Text('-')),
                ElevatedButton(onPressed: () => _hitung('x'), child: const Text('x')),
                ElevatedButton(onPressed: () => _hitung('/'), child: const Text('/')),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              hasil,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _reset,
              child: const Text("Reset"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
Widget getHomePage() => const _homePagState();
