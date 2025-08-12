import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String labeltext;
  final TextEditingController controller;
  final bool isPassword;

  const CustomTextfield({
    super.key,
    required this.controller,
    this.isPassword = false, required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          label: Text(labeltext),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}