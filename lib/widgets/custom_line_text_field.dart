import 'package:flutter/material.dart';

class CustomLineTextField extends StatelessWidget {
  final String title;
  final String type;
  final int maxLength;
  final TextEditingController textEditingController;
  const CustomLineTextField({
    required this.maxLength,
    required this.title,
    required this.type,
    required this.textEditingController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      keyboardType:
          type == 'number' ? TextInputType.number : TextInputType.text,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: title,
        contentPadding: const EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
