import 'package:flutter/material.dart';

class ViewSimilerAddToCompare extends StatefulWidget {
  final IconData icon;
  final String text;

  const ViewSimilerAddToCompare({
    super.key,
    required this.icon,
    required this.text
    });

  @override
  State<ViewSimilerAddToCompare> createState() => _ViewSimilerAddToCompareState();
}

class _ViewSimilerAddToCompareState extends State<ViewSimilerAddToCompare> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.38,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.8)),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(widget.icon),
              Text(widget.text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15
               ),
              )
            ],
          ),
        )
      ],
    );
  }
}