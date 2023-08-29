import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    required this.icon,
    required this.obscureText,
    required this.keyboardType,
  });

  final String lable;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 1.2,
      obscureText: obscureText,
      cursorColor: const Color(0xffFFD130),
      cursorHeight: 19,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          // vertical: 20,
          horizontal: 10,
        ),

        // label: Text('Email'),
        labelText: lable,
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: Icon(
          icon,
          color: const Color(0xffFFD130),
          size: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color(0xff979797),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color(0xff979797),
          ),
        ),
      ),
    );
  }
}
