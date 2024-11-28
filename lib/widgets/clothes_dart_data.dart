import 'package:flutter/material.dart';

class ClothesCardData extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final int price;
  const ClothesCardData({super.key, required this.name, required this.image,required this.desc,required this.price });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ), Text(
          desc,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
        Text(
          "\$$price",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ],
    );
  }
}
