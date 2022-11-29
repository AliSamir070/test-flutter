import 'package:flutter/material.dart';

class LoginDefaultField extends StatelessWidget {
  String hintText;
  TextEditingController myController;
  TextInputType type;
  bool obscureText;
  Widget? suffix;
  LoginDefaultField({
    required this.hintText ,
    required this.myController ,
    required this.type,
    required this.obscureText,
    this.suffix
  });
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: type,
      controller: myController,
      obscureText: obscureText,
      style: TextStyle(
          color: Colors.black,
          fontSize: 20
      ),
      decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20
          ),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: suffix
      ),
    );
  }
}
