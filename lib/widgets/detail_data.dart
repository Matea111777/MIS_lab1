import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  final String desc;
  final int price;

  const DetailData({super.key, required this.id, required this.desc, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2, color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),
      child: Column(
        children: [
          // Description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              desc[0].toUpperCase() + desc.substring(1), // Capitalize first letter
              style: const TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),

          const Divider(thickness: 1, color: Colors.grey),

          // Price
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "\$$price", // Add $ symbol before price
              style: const TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}