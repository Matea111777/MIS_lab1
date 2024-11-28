import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final int id;
  final int price;
  const DetailPrice({super.key, required this.id, required this.price});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      label: Text(
        "\$$price", // Display the price with a $ symbol
        style: const TextStyle(fontSize: 24, color: Colors.blue),
      ),
      avatar: CircleAvatar(
        child: Text(id.toString()), // Display the ID in the avatar
      ),
    );
  }
}