import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GridViewList extends StatefulWidget {
  const GridViewList({super.key});

  @override
  State<GridViewList> createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  List<Map> gridView = [
    {
      'image' : 'assets/images/mask1.png',
      'title' : 'Women Printed Kurta',
      'sup_title' : 'Neque porro quisquam est qui dolorem ipsum quia',
      'price' :'\$1500',
      'discount' : '\$2499',
      'off' : '40% OFF',
      'number' : '56890'
    },
    {
      'image': 'assets/images/mask2.png',
      'title' : 'HRX by Hrithik Roshan',
      'sup_title' : 'Neque porro quisquam est qui dolorem ipsum quia',
      'price' :'\$2499',
      'discount': '\$4999',
      'off': '50% OFF',
      'number' : '344567'
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 315),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(image: AssetImage(gridView[index]['image']),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 140,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            gridView[index]['title'],
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            gridView[index]['sup_title'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              height: 1.5
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(gridView[index]['price'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          ),
                         ),
                         const SizedBox(height: 5),
                         Row(
                          children: [
                            Text(gridView[index]['discount'],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.5),
                              decoration: TextDecoration.lineThrough
                             ),
                            ),
                            const SizedBox(width: 13),
                            Text(gridView[index]['off'],
                            style: const TextStyle(
                              color: AppColors.primaryColors,
                            ),
                            )
                          ],
                         ),
                         const SizedBox(height: 8),
                         Row(
                           children: [
                             RatingBar.builder(
                              allowHalfRating: true,
                              direction: Axis.horizontal,
                              itemSize: 19,
                              minRating: 0.5, 
                              itemBuilder: (context, index){
                                return const Icon(Icons.star, color: Colors.amber,);
                              }, 
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                             ),
                             const SizedBox(width: 5),
                             Text(gridView[index]['number'],
                             style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                             )
                           ],
                         ),
                        ],
                      ),
                    )
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