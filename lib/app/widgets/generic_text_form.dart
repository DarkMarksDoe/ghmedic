import 'package:flutter/material.dart';

class GenericTextForm extends StatelessWidget {
  const GenericTextForm({
    Key? key,
    required this.hintText,
    required this.maxLength,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final int maxLength;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        counterText: "",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black,
            width: 1.0,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
