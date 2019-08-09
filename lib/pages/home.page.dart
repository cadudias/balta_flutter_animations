import 'package:balta_flutter_animations/widgets/category/category-list.widget.dart';
import 'package:balta_flutter_animations/widgets/product/product-list.widget.dart';
import 'package:balta_flutter_animations/widgets/serach-box.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        //color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 80,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline,
                ),
                FlatButton(
                  child: Text("See All"),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
             Container(
              height: 350,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}