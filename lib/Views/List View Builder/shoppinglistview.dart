import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShoppingListView extends StatefulWidget {
  const ShoppingListView({super.key});

  @override
  State<ShoppingListView> createState() => _ShoppingListViewState();
}

class _ShoppingListViewState extends State<ShoppingListView> {
  List<Map> shoppingList = [
     {
      'image': 'assets/carsoul/unsplash4.png',
      'text': 'IWC Schaffhausen\n2021 Pilots Watch\n"SIHH 2019" 44mm',
      'price': '\$1900',
    },
    {
      'image': 'assets/carsoul/unsplash1.png',
      'text': 'Labbin White\nSneakers\nFor Men and Female',
      'price': '\$650',
    },
    {
      'image': 'assets/carsoul/unsplash5.png',
      'text': 'Labbin White Sneakers For Men and Female',
      'price': '\$750',
    },
    {
      'image': 'assets/carsoul/unsplash3.png',
      'text': 'Labbin White Sneakers For Men and Female',
      'price': '\$750',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 278,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: shoppingList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image(
                        image: AssetImage(shoppingList[index]['image']),
                        width: double.infinity,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 8),
                      child: Text(
                        shoppingList[index]['text'],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                            wordSpacing: 3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                      ),
                      child: Text(
                        shoppingList[index]['price'],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    
                    const SizedBox(height: 8),
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
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
