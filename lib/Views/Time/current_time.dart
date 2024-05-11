import 'package:flutter/material.dart';

class CurrentTime extends StatelessWidget {

  final String title;
  final String subTitle;
  final IconData icon;
  final Color backgroundColor;

  const CurrentTime({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.backgroundColor
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*100,
      height: 70,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500
                 ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(icon, size: 16, color:const Color(0xffFFFFFF),),
                    Text(
                      subTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff)
                    ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: 90,
              child: TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Color(0xffffffff))
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("View all",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff)
                    ),
                    ), 
                    Icon(Icons.arrow_right_alt, size: 20, color: Color(0xffffffff),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}