import 'package:flutter/material.dart';
import 'home.dart';
import 'register_page.dart';
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

// contoh variable buat setState
  String amba = "Login Status";
  void _handleLogin() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == 'admin' && password == 'admin') {
      // amba = "sukses login";
      // print(amba); 
      // print("login sucess");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Sukses login!"))
        
      );

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => getHomePage()),
  );
    } else {
      // amba = "gagal login";
      // print(amba);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau Password Salah!"))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/logo.png', width: 100, height: 100),
            const SizedBox(height: 10),
            const Text(
              "Welcome to our first App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Please login using your email and password"),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _handleLogin,
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: _goToRegisterPage,
                child: const Text("Register"),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
