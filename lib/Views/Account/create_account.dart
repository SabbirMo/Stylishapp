import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Button/custombutton.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:stylishapp/Views/Account/loginpage.dart';
import 'package:stylishapp/Views/Unit/logobutton.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isPassword = true;
  bool confirmPassword = true;

  final _fromKey = GlobalKey<FormState>();
  final userName = TextEditingController();
  final password = TextEditingController();
  final _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create an\nAccount",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Form(
                  key: _fromKey,
                    child: Column(
                  children: [
                    TextFormField(
                      controller: userName,
                      validator: (value) {
                        if(value !. isEmpty){
                          return "Please Enter your Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Username or Email",
                        prefixIcon: const Icon(Icons.person_3),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: password,
                      validator: (value) {
                        if(value !. isEmpty){
                          return "Please Enter the password";
                        }
                        if(value.length <6){
                          return "Minimum Six Digit";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPassword =! isPassword;
                            });
                          },
                          child: isPassword
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      obscureText: isPassword,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _confirmPassword,
                      validator: (value) {
                        if(value !. isEmpty){
                          return "Please Enter the password";
                        }
                        if(value != password.value.text){
                          return "No Match password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "ConfirmPassword",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              confirmPassword =! confirmPassword;
                            });
                          },
                          child: confirmPassword 
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined),
                        )
                      ),
                      obscureText: confirmPassword,
                    ),
                  ],
                 ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: RichText(
                    text: TextSpan(
                        text: 'By clicking the,',
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.6)),
                        children: [
                          const TextSpan(
                              text: ' Register',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.primaryColors)),
                          TextSpan(
                              text: ' button, you agree to the public offer',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)))
                        ]),
                  ),
                ),
                const SizedBox(height: 35),
                CustomButton(
                  onTap: () {
                    setState(() {
                      if (_fromKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Create Sucessfully!"),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                      Future.delayed(const Duration(seconds: 2), () {
                        userName.clear();
                        password.clear();
                        _confirmPassword.clear();
                      });
                    });
                  },
                  buttonName: 'Create Account',
                ),
                const SizedBox(height: 45),
                Column(
                  children: [
                    const Text(
                      "- OR Continue with -",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogoButtonView(
                          logo: 'assets/logo/google-logo.png',
                          onTap: () {},
                        ),
                        LogoButtonView(
                          logo: 'assets/logo/apple-logo.png',
                          onTap: () {},
                        ),
                        LogoButtonView(
                          logo: 'assets/logo/fb-logo.png',
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "I Already Have an Account",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(width: 7),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.primaryColors,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
