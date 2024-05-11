import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stylishapp/Views/Carousel%20%20Slider/carousel_slider.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:stylishapp/Views/List%20View%20Builder/shoppinglistview.dart';
import 'package:stylishapp/Views/Unit/all_featured.dart';
import 'package:stylishapp/Views/Unit/gotobuy.dart';
import 'package:stylishapp/Views/Unit/visibility.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  List<Map> sizeList = [
    {
      'id': 1,
      'title': '6 UK',
      'isSelected': false,
    },
    {
      'id': 2,
      'title': '7 UK',
      'isSelected': false,
    },
    {
      'id': 3,
      'title': '8 UK',
      'isSelected': false,
    },
    {
      'id': 4,
      'title': '9 UK',
      'isSelected': false,
    },
    {
      'id': 5,
      'title': '10 UK',
      'isSelected': false,
    },
  ];

  int count = 0;

  void sizeOnSelect (int id) {
    setState(() {
        for (var i = 0; i < sizeList.length; i++) {
        if (sizeList[i]['id'] == id) {
          sizeList[i]['isSelected'] = true;
        } else {
          sizeList[i]['isSelected'] = false;
        }
      }
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselSliderView(),
              Row(
                children: [
                  const Text(
                    "Size : ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$count ",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  itemCount: sizeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return 
                    InkWell(
                      onTap: () {
                        sizeOnSelect(sizeList[index]['id']);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: 70,
                        height: 45,
                        decoration: BoxDecoration(
                         
                          color: sizeList[index]['isSelected'] == false ? Colors.white : Colors.red,

                          border: Border.all(color: AppColors.primaryColors),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            sizeList[index]['title'],
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: sizeList[index]['isSelected'] == true
                                  ? Colors.white
                                  : Colors.red,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "NIke Sneakers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              const Text(
                "Vision Alta Men’s Shoes Size (All Colours)",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 22,
                    allowHalfRating: true,
                    itemBuilder: (context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                      );
                    },
                    onRatingUpdate: (value) {},
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "56,890",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "₹2,999",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "₹1,500",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "50% OFF",
                    style: TextStyle(
                        color: AppColors.primaryColors,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Product Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 14),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          "Nearest Store",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.lock_outline),
                        Text(
                          "VIP",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: 40,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Row(
                      children: [
                        Icon(Icons.restore),
                        Text(
                          "Return policy",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const GoToCartAndBuy(),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 100,
                height: 65,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 251, 173, 187),
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery in",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '1 within Hour',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ViewSimilerAddToCompare(
                    icon: Icons.visibility_outlined,
                    text: "View Similar",
                  ),
                  ViewSimilerAddToCompare(
                    icon: Icons.vibration,
                    text: "Add to Compare",
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Similar To",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 7),
              const AllFeatured(
                featured: '282+ Iteams ',
                sort: "sort",
                filter: "Filter",
              ),
              const SizedBox(height: 12),
              const ShoppingListView(),
            ],
          ),
        ),
      ),
    );
  }
}
