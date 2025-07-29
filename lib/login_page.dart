import 'package:flutter/material.dart';
import 'home.dart'; // pastikan getHomePage() ada di sini
import 'register_page.dart'; // pastikan RegisterPage() ada dan memiliki konstruktor kosong
import 'reusable_widgets.dart'; // pastikan widget ReusableTextField dan ReusableButton ada

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _goToRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  void _handleLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email == 'admin' && password == 'admin') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Sukses login!")),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => getHomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau Password Salah!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/logo.png', width: 100, height: 100),
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to our first App",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Please login using your email and password"),
              const SizedBox(height: 16),
              ReusableTextField(
                controller: _emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 16),
              ReusableTextField(
                controller: _passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 24),
              Center(
                child: ReusableButton(
                  onPressed: _handleLogin,
                  label: "Login",
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ReusableButton(
                  onPressed: _goToRegisterPage,
                  label: "Register",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
