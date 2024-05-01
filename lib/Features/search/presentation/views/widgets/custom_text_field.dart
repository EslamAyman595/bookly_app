import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.onFieldSubmitted,
    this.validator,
    this.onPressedIcon,
    required this.icon,
    required this.hintText,
    required this.labelText,
    this.controller,
  }) : super(key: key);

  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator? validator;
  final VoidCallback? onPressedIcon;
  final IconData icon;
  final String hintText;
  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: IconButton(
            onPressed: onPressedIcon,
            icon: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
