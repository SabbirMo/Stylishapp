
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class AllFeatured extends StatelessWidget {

  final String featured;
  final String sort;
  final String filter;


  const AllFeatured({
    super.key,
    required this.featured, 
    required this.sort, 
    required this.filter
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              featured,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
             ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Text(sort,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                         ),
                        ),
                        const Icon(Icons.swap_vert)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1
                        )
                      ]
                    ),
                    child:  Row(
                      children: [
                        Text(filter,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                         ),
                        ),
                        SvgPicture.asset('assets/svg/filter.svg',width: 23,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}