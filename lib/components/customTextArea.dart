import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {
  final String hint;
  final funValidator;

  CustomTextArea({required this.hint, required this.funValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        maxLines: 15,
        validator: funValidator,
        obscureText: hint == "비밀번호" ? true : false,
        decoration: InputDecoration(
          filled: true,
          hintText: "$hint",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}