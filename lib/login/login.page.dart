import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F5F5), // cor com hexadecimal
        padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  offset: new Offset(1, 2.0), // distancia da borda
                  blurRadius: 5, // expansao da borda
                  spreadRadius: 1,
                ),
              ]),
              //decoration: ,
            ),
          ],
        ),
      ),
    );
  }
}
