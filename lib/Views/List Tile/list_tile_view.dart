import 'package:flutter/material.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Image(image: AssetImage('assets/logo/offer.png')),
      title: const Text("Special Offers😱",
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500
      ),
      ),
      subtitle: Text("We make sure you get the\noffer you need at best prices",
      style: TextStyle(
        color: Colors.black.withOpacity(0.8),
        fontSize: 14,
        height: 1.2
      ),
      ),
    );
  }
}