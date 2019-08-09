import 'package:balta_flutter_animations/widgets/product/product-card.widget.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {

  final Axis scrollDirection;
  
  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductCard(
            image: "assets/product-1.png",
            title: "BeoPlay TShirt",
            description: "Nike",
            price: 120
          ),
          ProductCard(
            image: "assets/product-2.png",
            title: "BeoPlay TShirt",
            description: "Nike",
            price: 120
          ),
          ProductCard(
            image: "assets/product-10.png",
            title: "BeoPlay TShirt",
            description: "Nike",
            price: 120
          ),
        ],
      ),
    );
  }
}