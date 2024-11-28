import 'package:flutter/material.dart';
import 'package:lab1mis/widgets/clothes_grid.dart';

import '../models/clothes_model.dart';
import '../widgets/clothes_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothe> clothe = List.generate(5, (index) =>
      Clothe(id: index,
        name: "Clothe $index",
        img: 'https://www.damart.co.uk/media/catalog/product/cache/8bcf31ebebcacc62ad921ee05a177ab1/8/0/80122-26479-F-1-HD-3.jpg', // You can replace this with actual image URLs
        desc: "Description for Clothe $index", // Example descriptions
        price: (index + 1) * 10,));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent[100],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("213026", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothesGrid(clothe: clothe),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Buy',
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
