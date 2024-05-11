import 'package:flutter/material.dart';

class SplashScreenView extends StatefulWidget {
  final String image;
  final String text;
  final String supText;

  const SplashScreenView({
    super.key,
    required this.image,
    required this.text,
    required this.supText
    });

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(widget.image)),
        
        Text(widget.text, 
        style: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
         ),
        ),
        const SizedBox(height: 5),
        Text(widget.supText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
          fontSize: 14,
          height: 1.5
        ),
        )
      ],
    );
  }
}