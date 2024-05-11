import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class LogoButtonView extends StatelessWidget {

  final String logo;
  final void Function()? onTap;
  const LogoButtonView({
    super.key,
    required this.logo, 
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.primaryColors),
          shape: BoxShape.circle,
          image: DecorationImage(
          image: AssetImage(logo),
          ),
        ),
      ),
    );
  }
}