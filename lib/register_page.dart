import 'package:flutter/material.dart';
import 'reusable_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedGender = 'Laki-laki';
  DateTime? _selectedDate;

  void _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2005, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _handleRegister() {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Mohon lengkapi semua data")),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Registrasi berhasil!")),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Nama"),
            ReusableTextField(
              controller: _nameController,
              hintText: "Masukkan nama lengkap",
            ),
            const SizedBox(height: 10),

            const Text("Email / Username"),
            ReusableTextField(
              controller: _emailController,
              hintText: "Masukkan email atau username",
            ),
            const SizedBox(height: 10),

            const Text("Password"),
            ReusableTextField(
              controller: _passwordController,
              hintText: "Masukkan password",
              obscureText: true,
            ),
            const SizedBox(height: 10),

            const Text("Jenis Kelamin"),
            DropdownButton<String>(
              value: _selectedGender,
              items: const [
                DropdownMenuItem(value: 'Laki-laki', child: Text("Laki-laki")),
                DropdownMenuItem(value: 'Perempuan', child: Text("Perempuan")),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
            ),
            const SizedBox(height: 10),

            const Text("Tanggal Lahir"),
            Row(
              children: [
                Text(
                  _selectedDate == null
                      ? "Belum dipilih"
                      : "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _pickDate,
                  child: const Text("Pilih Tanggal"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Center(
              child: ReusableButton(
                onPressed: _handleRegister,
                label: "Daftar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
