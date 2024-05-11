
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final void Function()? onTap;
  final TextEditingController? controller;

  const TextFieldWidget({
    super.key, 
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onTap,
    this.controller
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: hintText,
                    prefixIcon: Icon(prefixIcon),
                    suffixIcon: InkWell(
                      onTap: onTap,
                      child: Icon(suffixIcon),
                    ),
                  ),
                  obscureText: obscureText,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}