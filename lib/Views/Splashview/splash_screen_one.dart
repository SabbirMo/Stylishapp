import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Account/loginpage.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylishapp/Views/Get%20Started/get_started.dart';
import 'package:stylishapp/Views/Splashview/splashscreen_view.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LoginPage())
                );
              });
            }, 
            child: const Text("Skip",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
           ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  text: "${count+1}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: "/3",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                ),
              ),
            ],
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IndexedStack(
              index: count,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*100,
                  height: MediaQuery.of(context).size.height*.83,
                  decoration: const BoxDecoration(
                    color: Colors.white
                  ),
                  child: const Center(
                    child: SplashScreenView(
                      image: "assets/logo/fashion1.png",
                      text: "Choose Products",
                      supText: "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.",
                    )
                  )
                ),
                Container(
                  width: MediaQuery.of(context).size.width*100,
                  height: MediaQuery.of(context).size.height*.83,
                  decoration: const BoxDecoration(
                    color: Colors.white
                  ),
                  child: const Center(
                    child: SplashScreenView(
                      image: 'assets/logo/fashion2.png', 
                      text: 'Make Payment', 
                      supText: "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.",
                    )
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*100,
                  height: MediaQuery.of(context).size.height*.83,
                  decoration: const BoxDecoration(
                    color: Colors.white
                  ),
                 child: const Center(
                    child: SplashScreenView(
                      image: 'assets/logo/fashion3.png', 
                      text: 'Get Your Order', 
                      supText: "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.",
                    )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      if(count == 0){
                        return;
                      }
                      else {
                        count--;
                      }
                    });
                  }, 
                  child: count == 0 ? Text("Prev",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                  ),
                  ) 
                  : const Text(
                      "Prev",
                      style: TextStyle(
                      color: AppColors.primaryColors,
                      fontSize: 18,
                    ),
                  ) 
                ),
      
                AnimatedSmoothIndicator(
                  activeIndex: count, 
                  count: count+1,
                  effect: const ExpandingDotsEffect(
                     activeDotColor: Colors.black,
                     dotHeight: 12,
                  ),
                ), 
      
                TextButton(
                  onPressed: () {
                    setState(() {
                      if(count == 2){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const GetStarted(),
                          ),
                        );
                      }
                      else{
                        count++;
                      }
                    });
                  }, 
                  child: count==2 
                  ? const Text("Get Started",
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                   ),
                  )
                  : const Text("Next",
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}