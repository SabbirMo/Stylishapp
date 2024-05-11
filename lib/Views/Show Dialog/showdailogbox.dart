import 'package:flutter/material.dart';

class ShowDailogBox extends StatefulWidget {
  const ShowDailogBox({super.key});

  @override
  State<ShowDailogBox> createState() => _ShowDailogBoxState();
}

class _ShowDailogBoxState extends State<ShowDailogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 400,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_rounded, size: 100, color: Color(0xffF83758),
            ),
            Text("Payment done successfully.",
            style: TextStyle(
              fontSize: 16, 
              color: Colors.black,
              fontWeight: FontWeight.w500
            ), 
            )
          ],
        ),
      ),
    );
  }
}