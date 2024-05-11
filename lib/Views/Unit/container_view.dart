import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width*100,
          height: 172,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                color: Colors.grey,
                blurRadius: 5
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(image: AssetImage('assets/logo/mac1.png')),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *0.2,
                    height: 170,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage('assets/logo/mac2.png'))
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image:AssetImage('assets/logo/mac3.png'))
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Flat and Heels",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                   ),
                   const SizedBox(height: 3),
                   Text("Stand a chance to get rewarded",
                   style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 12
                   ),
                   ),
                   const SizedBox(height: 10),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                     child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.primaryColors
                      ),
                      onPressed: () {
                        print("Visti now");
                      }, 
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Visit now",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                          ), 
                          Icon(Icons.arrow_right_alt_outlined,
                          size: 26,
                          color: Colors.white,
                          )
                        ],
                      ),
                     ),
                   )
                  ],
                ),
              )
            ],
          ),
         );
  }
}