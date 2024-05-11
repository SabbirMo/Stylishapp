import 'package:flutter/material.dart';
import 'package:stylishapp/Buttonbar/buttonview.dart';
import 'package:stylishapp/Views/Button/custombutton.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage('assets/images/unsplash.jpg'),fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("You want\nAuthentic, here\nyou go!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w500
               ),
              ),
              const SizedBox(height: 22),
              Text("Find it here, buy it now!",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14
               ),
              ),
              const SizedBox(height: 22),
              CustomButton(
                onTap: () {
                  setState(() {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const ButtonView())
                    );
                  });
                }, 
                buttonName: 'Get Started',
              ),
              const SizedBox(height: 22)
            ],
          ),
        ),
      ),
    );
  }
}