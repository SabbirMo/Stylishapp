import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Check%20Out/paymentcheck.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  bool favorite = true;
  String chooseValue = '40';
  String chooseItem = '1';
  List<String> listItem = [
    '40', '41', '42', '43', '44', '45'
  ];
  List<String> qytList = ['1','2','3','4','5'];

  double amount = 7000.00;
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
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                favorite =! favorite;
              });
            }, 
            icon: favorite
            ? const Icon(Icons.favorite_outline, color: Colors.black,) 
            : const Icon(Icons.favorite,color: Colors.red),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*100,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(image: AssetImage('assets/images/mask1.png'),
                        fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text( "Women’s Casual Wear",
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 8,),
                          const Text("Checked Single-Breasted\nBlazer",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                           ),
                          ),
                          Row(
                            children: [
                              const Text("Size: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                              const SizedBox(width: 5),
                              DropdownButton<String>(
                                items: listItem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(), 
                              onChanged: (value){
                                setState(() {
                                  chooseValue = value!;
                                });
                              },
                              value: chooseValue,
                              ),
                              const SizedBox(width: 7),
                              const Text(
                                  "Qyt: ",
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 5),
                              DropdownButton(
                                items: qytList.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(), 
                                onChanged: (newVlaue){
                                  setState(() {
                                    chooseItem = newVlaue!;
                                  });
                                },
                                value: chooseItem,
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Text("Delivery by ",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                               ),
                              ),
                              Text("10 May 2XXX",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                               ),
                              )
                            ],
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: MediaQuery.of(context).size.width*100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 0.2)
                    )
                  ]
                ),
                child: const ListTile(
                  title: Text("Apply Coupons",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17, 
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  leading: Image(image: AssetImage('assets/logo/icon.png')),
                  trailing: Text("Select",
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 15, 
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Order Payment Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Amounts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  ),
                  Text("\$ 7,000.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16, 
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan> [
                        TextSpan(
                          text: 'Convenience',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          )
                        ),
                        
                        TextSpan(
                          text: '\t\t\t\t\tKnow More',
                          style: TextStyle(
                            color: AppColors.primaryColors,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          )
                        )
                      ]
                    ),
                  ),
                  const Text('Apply Coupon',
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 5, 36),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee",
                  style: TextStyle(
                    fontSize: 16, 
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  Text("Free",
                   style: TextStyle(
                        color: Color.fromARGB(255, 187, 5, 36),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order Total",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  Text(
                    "\$ 7,000.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "EMI  Available ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                      )
                    ), 
                    TextSpan(
                      text: "\t\t\t\t\t\tDetails",
                      style: TextStyle(
                        color: AppColors.primaryColors,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      )
                    )
                  ]
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: MediaQuery.of(context).size.width*100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Column(
                      children: [
                         Text(
                            "\$$amount",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'View Details',
                            style: TextStyle(
                                color: AppColors.primaryColors,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                        ),
                      ],
                     ),
                     SizedBox(
                      width: 160,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primaryColors
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => const PaymentCheckOut())
                            );
                          });
                        },
                        child: const Text('Proceed to Payment',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ),
                     )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}