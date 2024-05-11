import 'package:flutter/material.dart';
import 'package:stylishapp/Pages/checkout.dart';

class GoToCartAndBuy extends StatefulWidget {
  const GoToCartAndBuy({super.key});

  @override
  State<GoToCartAndBuy> createState() => _GoToCartAndBuyState();
}

class _GoToCartAndBuyState extends State<GoToCartAndBuy> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              print("Go to Cart");
            });
          },
          child: Stack(
            children: [
              Container(
                width: 173,
                height: 60,
                color: Colors.white,
              ), 
              Positioned(
                left: 40,
                top: 7,
                child: Container(
                  width: 130,
                  height: 45,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Color.fromARGB(255, 2, 77, 139),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)
                    ),
                  ),
                  child: const Center(
                    child: Text("Go to cart",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                     ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 2,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Color.fromARGB(255, 2, 77, 139),
                      ], 
                      begin: Alignment.topRight, 
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.black
                      )
                    ]
                  ),
                  child: const Icon(Icons.shopping_cart_outlined, 
                  color: Colors.white,
                  size: 30,
                 ),
                ),
              ),
            ],
          ),
        ),
       
         InkWell(
          onTap: () {
            setState(() {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const CheckOut())
              );
            });
          },
           child: Stack(
            children: [
              Container(
                width: 173,
                height: 60,
                color: Colors.white,
              ), 
              Positioned(
                left: 40,
                top: 7,
                child: Container(
                  width: 130,
                  height: 45,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green, Color.fromARGB(255, 5, 140, 10)
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)
                    ),
                  ),
                  child: const Center(
                    child: Text("Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                     ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 2,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.green,
                      Color.fromARGB(255, 5, 140, 10)
                      ], 
                      begin: Alignment.topRight, 
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.black
                      )
                    ]
                  ),
                  child: const Icon(Icons.touch_app_outlined, 
                  color: Colors.white,
                  size: 30,
                 ),
                ),
              ),
            ],
                 ),
         ),
      ],
    );
  }
}