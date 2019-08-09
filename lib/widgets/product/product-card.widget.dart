import 'package:balta_flutter_animations/pages/product.page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  
  final String image;
  final String title;
  final String description;
  final double price;

  ProductCard({
    @required this.image, 
    @required this.title, 
    @required this.description, 
    @required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // alinha a esquerda
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    image: image,
                    title: title,
                    description: description,
                    price: price
                  ),
                )
              );
            },
            child: Hero(
              tag: image,
              child: Image.asset(
                image, 
                width: 170, 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}