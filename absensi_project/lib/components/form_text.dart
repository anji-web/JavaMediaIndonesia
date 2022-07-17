import 'package:flutter/material.dart';
class FormText extends StatelessWidget {
  final String textLabel;
  final TextEditingController? controller;
  final ValueChanged<String?> method;
  final bool isEnabled;
  const FormText({
    Key? key,
    required this.textLabel,
    this.controller,
    required this.method,
    required this.isEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      controller: controller,
      onChanged: method,
      readOnly: isEnabled,
      enableInteractiveSelection: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: textLabel,
          labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          )
      ),
    );
  }
}