import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stylishapp/Pages/shoppingbag.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  double rating =  0;
  double ratingbar = 0;

  List<String> image = [
    'assets/images/mask1.png',
    'assets/images/list1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Out",
        style: TextStyle(
          color: Colors.black,
         ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*100,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0.2)
                  )
                ]
              ),
              child: const Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 5),
                  Text("Delivery Address",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.70,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.5
                      )
                    ],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Address : ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                             ),
                            ), 
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print("Add address");
                                });
                              },
                              child: const Image(image: AssetImage('assets/logo/edit.png')))
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text("216 St Paul's Rd, London N1 2LL, UK Contact :  +44-784232",)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      print("Add");
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.16,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 0.5
                        )
                      ]
                    ),
                    child: const Image(image: AssetImage('assets/logo/add.png')),
                  ),
                )
              ],
            ),
            const SizedBox(height: 11),
            Container(
              width: MediaQuery.of(context).size.width * 100,
              height: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(offset: Offset(0, 0.2))]),
              child: const Text("Shopping List",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black, 
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width*100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 0.2
                  )
                ]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/mask1.png')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Women’s Casual Wear",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                         ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text("Variations : ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                             ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print("Black");
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text("Black",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                 ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print("Red");
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text("Red",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                 ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('$rating',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                            const SizedBox(width: 5,),
                            RatingBar.builder(
                              allowHalfRating: true,
                              itemSize: 20,
                              itemBuilder: (context, index) {
                                return const Icon(Icons.star, color: Colors.amber,);
                              }, 
                              onRatingUpdate: (rating) {
                                setState(() {
                                  this.rating = rating;
                                });
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ShoppingBag()));
                              },
                              child: Container(
                                width: 90,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(),
                                ),
                                child: const Center(
                                  child: Text(
                                    "\$ 34.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              children: [
                                const Text('upto 33% off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColors
                                 ),
                                ),
                                Text("\$ 64.00",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black.withOpacity(0.7)
                                ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width*100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1)
                  )
                ]
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total (1) : ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Text("\$ 34.00",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                     ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width*100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 0.2
                  )
                ]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/list1.png')
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Men’s Jacket",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                         ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Text("Variations : ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                             ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print("Green");
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text("Green",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                 ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  print("Grey");
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text("Grey",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                 ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('$ratingbar',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                            const SizedBox(width: 5,),
                            RatingBar.builder(
                              allowHalfRating: true,
                              itemSize: 20,
                              itemBuilder: (context, index) {
                                return const Icon(Icons.star, color: Colors.amber,);
                              }, 
                              onRatingUpdate: (rating) {
                                setState(() {
                                  this.ratingbar = rating;
                                });
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  
                                });
                              },
                              child: Container(
                                width: 90,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(),
                                ),
                                child: const Center(
                                  child: Text(
                                    "\$ 45.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              children: [
                                const Text('upto 33% off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColors
                                 ),
                                ),
                                Text("\$ 67.00",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.black.withOpacity(0.7)
                                ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width*100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1)
                  )
                ]
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total (1) : ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Text("\$ 45.00",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                     ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}