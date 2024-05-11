import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Unit/all_featured.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  List<Map> wishList = [
    {
      'image' : 'assets/images/list1.png',
      'title' : 'Black Winter...',
      'sup_title' : 'Autumn And Winter Casual cotton-padded jacket...',
      'price' : '₹499',
      'rating' : '6,890'
    },
    {
      'image' : 'assets/images/list2.png',
      'title' : 'Mens Starry',
      'sup_title' : 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      'price' : '₹399',
      'rating': '45,678'
    },
    {
      'image' : 'assets/images/list3.png',
      'title' : 'Black Dress',
      'sup_title' : 'Solid Black Dress for Women, Sexy Chain Shorts Ladi...',
      'price' : '₹2,000',
      'rating': '1,52,344'
    },
    {
      'image' : 'assets/images/list4.png',
      'title' : 'Pink Embroide...',
      'sup_title' : 'EARTHEN Rose Pink Embroidered Tiered Max...',
      'price' : '₹1,900',
      'rating': '5,23,456'
    },
    {
      'image' : 'assets/images/list5.png',
      'title' : 'Flare Dress',
      'sup_title' : 'Antheaa Black & Rust Orange Floral Print Tiered Midi F...',
      'price' : '₹1,990',
      'rating': '45,678'
    },
    {
      'image' : 'assets/images/list6.png',
      'title' : 'denim dress',
      'sup_title' : 'Blue cotton denim dress Look 2 Printed cotton dr...',
      'price' : '₹999',
      'rating': '3,35,566'
    },
    {
      'image' : 'assets/images/list7.png',
      'title' : 'Jordan Stay',
      'sup_title' : "The classic Air Jordan 12 to create a shoe that's fres...",
      'price' : '₹4,999',
      'rating': '27,344'
    },
    {
      'image' : 'assets/images/list8.png',
      'title' : 'Realme 7',
      'sup_title' : "6 GB RAM | 64 GB ROM | Expandable Upto 256...",
      'price' : '₹3,499',
      'rating': '10,23,456'
    },
    {
      'image' : 'assets/images/list9.png',
      'title' : 'Sony PS4',
      'sup_title' : "Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...",
      'price' : '₹1,999',
      'rating': '3,44,567'
    },
    {
      'image' : 'assets/images/list10.png',
      'title' : 'Black Jacket 12...',
      'sup_title' : "This warm and comfortable jacket is great for learni...",
      'price' : '₹2,999',
      'rating': '8,35,566'
    },
    {
      'image' : 'assets/images/list11.png',
      'title' : 'D7200 Digital C...',
      'sup_title' : "D7200 Digital Camera (Nikon) In New Area...",
      'price' : '₹26,999',
      'rating': '2,23,569'
    },
    {
      'image' : 'assets/images/list12.png',
      'title' : "men’s & boys s...",
      'sup_title' : "George Walker Derby Brown Formal Shoes",
      'price' : '₹999',
      'rating': '67,456'
    },
    {
      'image' : 'assets/images/list13.png',
      'title' : 'Muscle Blaze...',
      'sup_title' : "NUTRITIONAL POWERHOUSE: MuscleBl...",
      'price' : '₹3,900',
      'rating': '13,45,678'
    },
    {
      'image' : 'assets/images/list14.png',
      'title' : 'Hot chocolate',
      'sup_title' : "chocolate with ashwagandha and get a coconu...",
      'price' : '₹200',
      'rating': '6,23,569'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
            image: AssetImage('assets/logo/stylish.png'), width: 115),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: const Image(
            image: AssetImage('assets/logo/Group.png'),
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/logo/profile.png'),
          )
        ],
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          children: [
            const AllFeatured(
              featured: '52,082+ Iteams', 
              sort: "sort", 
              filter: "filter",
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.8,
              child: MasonryGridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: wishList.length,
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,), 
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            spreadRadius: 1, 
                            color: Colors.grey
                          )
                        ],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: AssetImage(wishList[index]['image']), 
                          width: double.infinity,
                          fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                            child: Text(wishList[index]['title'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(wishList[index]['sup_title'],
                            style: const TextStyle(
                              height: 1.4,
                              color: Colors.black
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(wishList[index]['price'], 
                            style: const TextStyle(
                              color: Colors.black, 
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 7),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 19,
                                  allowHalfRating: true,
                                  itemBuilder: (context, index) {
                                    return const Icon(Icons.star, color: Colors.amber,);
                                  }, 
                                  onRatingUpdate: (rating) {},
                                ),
                                const SizedBox(width: 4),
                                Text(wishList[index]['rating'] ?? "Null",
                                style: const TextStyle(
                                  fontSize: 11
                                ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
     ),
    );
  }
}