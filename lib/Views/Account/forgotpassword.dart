import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Button/custombutton.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forgot\npassword?",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your email address",
                  prefixIcon: const Icon(Icons.email)
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("* We will send you a message to set or reset your new password"),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: (){
                  setState(() {
                    //print("Email: ${email.text.toString()}");
                    Future.delayed(const Duration(seconds: 1), () {
                      email.clear();
                    });
                  });
                }, 
                buttonName: "Submit",
              )
            ],
          ),
        ),
      ),
    );
  }
}