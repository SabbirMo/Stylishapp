import 'package:flutter/material.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class ListViewSide extends StatefulWidget {
  const ListViewSide({super.key});

  @override
  State<ListViewSide> createState() => _ListViewSideState();
}

class _ListViewSideState extends State<ListViewSide> {

  List<Map> listViewList = [
    {
      'image' : 'assets/images/watch.png',
      'text' : 'IWC Schaffhausen\n2021 Pilots Watch\n"SIHH 2019" 44mm',
      'price' : '\$650',
      'through' : '\$1599',
      'off' : '60% OFF'
    },
    {
      'image' : 'assets/images/shoes.png',
      'text' : 'Labbin White\nSneakers\nFor Men and Female',
      'price' : '\$650',
      'through' : '\$1250',
      'off' : '70% OFF'
    },
    {
      'image' : 'assets/images/beg.png',
      'text' : 'Labbin White Sneakers For Men and Female',
      'price' : '\$750',
      'through' : '\$1999',
      'off' : '60% OFF'
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
            itemCount: listViewList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
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
                      child: Image(image: AssetImage(listViewList[index]['image']),
                      width: double.infinity,
                      height: 160,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                      child: Text(listViewList[index]['text'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        wordSpacing: 3
                       ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7,),
                      child: Text(listViewList[index]['price'],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                       ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        children: [
                          Text(listViewList[index]['through'],
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            decoration: TextDecoration.lineThrough
                           ),
                          ),
                          const SizedBox(width: 8),
                          Text(listViewList[index]['off'],
                          style: const TextStyle(
                            color: AppColors.primaryColors
                           ),
                         )
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