import 'package:flutter/material.dart';
import 'package:lab1mis/models/clothes_model.dart';
import 'package:lab1mis/widgets/clothes_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<Clothe> clothe;
  const ClothesGrid({super.key, required this.clothe});
  @override
  _ClothesGridState createState() => _ClothesGridState();
}
class _ClothesGridState extends State<ClothesGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.clothe.map((clothe) =>
          ClothesCard(id: clothe.id, name: clothe.name, image: clothe.img,desc: clothe.desc,price: clothe.price,),
      ).toList(),
    );
  }
}
