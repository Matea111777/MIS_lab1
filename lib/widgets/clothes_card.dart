import 'package:flutter/material.dart';
import 'package:lab1mis/models/clothes_model.dart';
import 'package:lab1mis/widgets/clothes_dart_data.dart';

class ClothesCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String desc;
  final int price;
  const ClothesCard({super.key,required this.id, required this.name, required this.image,required this.desc,required this.price });


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothe(id: id, name: name, img: image,desc:desc,price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothesCardData(image: image, name: name,desc: desc,price: price,),
        ),
      ),
    );
  }
}
