import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String buttonName;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 55,
          decoration: BoxDecoration(
            color: AppColors.primaryColors,
            borderRadius: BorderRadius.circular(7)),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(color: Color(0xffFFFFFF), fontSize: 21),
            ),
          ),
        ),
      ),
    );
  }
}