
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stylishapp/Views/Account/forgotpassword.dart';
import 'package:stylishapp/Views/Button/custombutton.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:stylishapp/Views/Account/create_account.dart';
import 'package:stylishapp/Views/Unit/logobutton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomePagLoginPageState();
}

class _HomePagLoginPageState extends State<LoginPage> {
   bool isHidenPassword = true;
   
   final userName = TextEditingController();
   final password = TextEditingController();
   final _fromKey = GlobalKey<FormState>();

  Future loginApi(String email, String password) async {
    try {
      final response = await http.post(
          Uri.parse('https://reqres.in/api/register'),
          body: {"email": email, "password": password});
        
        if(response.statusCode == 200){
          print("Login Succes");
        }
        else{
          print("Failed");
        }
    } catch (e) {
      print(e.toString());
    }

  }

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
                const Text("Welcome\nBack!",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 15),
                Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if(value !.isEmpty){
                            return "Enter your username or email";
                          }
                          return null;
                        },
                        controller: userName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: 'Email',
                          prefixIcon: const Icon(Icons.person_3),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if(value !. isEmpty){
                            return "Please enter valid password";
                          }
                          if(value.length<6){
                            return "Minimum six digit";
                          }
                          return null;
                        },
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isHidenPassword =! isHidenPassword;
                              });
                            },
                            child: isHidenPassword 
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined),
                          )
                        ),
                        obscureText: isHidenPassword,
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const ForgotPassword())
                      );
                    });
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primaryColors
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                CustomButton(
                  onTap: () {
                    // setState(() {
                    //   if(_fromKey.currentState!.validate()){
                    //     print("Name: ${userName.text.toString()} Password: ${password.text.toString()}");
                        
                    //   }
                    // });
                    // Future.delayed(const Duration(seconds: 1),() {
                    //   userName.clear();
                    //   password.clear();
                    // });

                    loginApi(userName.text.toString(), password.text.toString());
                  },
                  buttonName: "Login",
                ),
                const SizedBox(height: 45),
                Column(
                  children: [
                    const Text("- OR Continue with -",
                    style: TextStyle(
                      fontSize: 12
                    ),
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
                        const Text("Create An Account",
                        style: TextStyle(
                          fontSize: 14
                         ),
                        ),
                        const SizedBox(width: 7),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const CreateAccount()) 
                            );
                          },
                          child: const Text("Sign Up", 
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.primaryColors,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline
                          ),
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