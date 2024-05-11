import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class UnitView extends StatefulWidget {
  final String uk;

  const UnitView({super.key, required this.uk});

  @override
  State<UnitView> createState() => _UnitViewState();
}

class _UnitViewState extends State<UnitView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColors),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          widget.uk,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColors
                          ),
                        ),
                      ),
                    ),
    );
  }
}