import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class HotSummer extends StatefulWidget {
  const HotSummer({super.key});

  @override
  State<HotSummer> createState() => _HotSummerState();
}

class _HotSummerState extends State<HotSummer> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width*100,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.2
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/images/hotsummer.png'),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, top: 5),
                  child: Text("New Arrivals",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                   ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Summer’ 25 Collections",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 90,
                          height: 33,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColors,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text("View All", 
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                ),
                                Icon(Icons.arrow_right_alt, size: 28, color: Colors.white,)
                              ],
                            ),
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