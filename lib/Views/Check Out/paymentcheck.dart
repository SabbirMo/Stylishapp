import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Button/custombutton.dart';
import 'package:stylishapp/Views/Show%20Dialog/showdailogbox.dart';

class PaymentCheckOut extends StatefulWidget {

  const PaymentCheckOut({super.key, });

  @override
  State<PaymentCheckOut> createState() => _PaymentCheckOutState();
}

class _PaymentCheckOutState extends State<PaymentCheckOut> {

  int count  = 0;
  
  get data => null;
  Sum (int a, int b) {
    int sum;

    sum = a + b;

    return sum;
  }

  _showDailogBox(){
    showDialog(context: context, 
    builder: (context) {
      return const ShowDailogBox();
    },
    );
  }

  List<Map> paymentMethod = [
    {
      "id" : 1,
      "image" : "assets/logo/visa.png",
      "number" : "********2109",
      'isSelected': false,
    },
    {
      "id": 2,
      "image" : "assets/logo/paypal.png",
      "number" : "********2109",
      'isSelected': false,
    },
    {
      "id": 3,
      "image" : "assets/logo/maestro.png",
      "number" : "********2109",
      'isSelected': false,
    },
    {
      "id": 4,
      "image" : "assets/logo/apple-logo.png",
      "number" : "********2109",
      'isSelected': false,
    },
  ];

  void selectMethod(int id){
    setState(() {
      for (var i = 0; i < paymentMethod.length; i++) {
        if (paymentMethod[i]['id'] == id) {
          paymentMethod[i]['isSelected'] = true;
        } else {
          paymentMethod[i]['isSelected'] = false;
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
        centerTitle: true,
        title: const Text("Check Out",
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        ),
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          }, 
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  Text("\$ 7,000",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18, 
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$ 30",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$ ${Sum(7000, 30).toString()}' ,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Divider(
                thickness: 2, 
              ),
              const SizedBox(height: 25),
              const Text('Payment',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),
              ),
              const SizedBox(height: 15),
             SizedBox(
              height: 250,
               child: ListView.builder(
                itemCount: paymentMethod.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  final data = paymentMethod[index];
                 return  InkWell(
                    onTap: () {
                      selectMethod(data['id']);
                    },
                   child: Container(
                    height: 52,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: data['isSelected'] == false ? Colors.black : Colors.red)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(image: AssetImage(paymentMethod[index]['image'])),
                          Text(paymentMethod[index]['number'],
                          style: const TextStyle(
                            color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                   ),
                 );
                })
               ),
             ),
              const SizedBox(height: 25),
              CustomButton(
                onTap: () {
                  setState(() {
                     _showDailogBox();
                    Future.delayed(const Duration(seconds: 2), () {
                      Navigator.pop(context);
                    });
                  });
                }, 
                buttonName: 'Continue',
              )
            ],
          ),
        ),
      ),
    );
  }
}