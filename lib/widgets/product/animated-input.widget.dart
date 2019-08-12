import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {

  // essa animação acontece junto com a a niamção do hamburgquer, por isso ela usa o mesmo controllador de animações
  final AnimationController controller;
  final Animation<Color> containerColorAnim; // troca cor do container
  final Animation<double> containerOpacityAnim; // troca opacidade do container
  final Animation<double> containerBorderRadiusAnim; // troca borda do container
  final Animation<double> containerSizeAnim; // troca tamanho do container

  AnimatedInput({this.controller}) : 
  containerOpacityAnim = Tween(
    begin: 0.0,
    end: 1.0
  ).animate(
    // tipo da animação
    CurvedAnimation(
      parent: controller,
      curve: Interval(0.7, 0.9) // se a duracao do controller é 1 segundo ele vai daurar do 70% ao 90%, não começa já
    )
  ),

  containerSizeAnim = Tween(
    begin: 60.0,
    end: 200.0
  ).animate(
    // tipo da animação
    CurvedAnimation(
      parent: controller,
      curve: Interval(0.2, 0.3) // primeiro aumenta o tamanho do container, dos 20 aos 30% pra depois troca a opacidade
    )
  ),

   containerBorderRadiusAnim = Tween(
    begin: 0.0,
    end: 30.0
  ).animate(
    // tipo da animação
    CurvedAnimation(
      parent: controller,
      curve: Interval(0.25, 0.4)
    )
  ),
  containerColorAnim = ColorTween(
    begin: Colors.white.withOpacity(0),
    end: Colors.black12
  ).animate( 
    CurvedAnimation(
      parent: controller,
      curve: Interval(0.0, 0.25)
  ));

  @override
  Widget build(BuildContext context)
  {
    return AnimatedBuilder(
      builder: _animate,
      animation: controller
    );
  }

  Widget _animate(context, child) {
    return Container(
      height: 60,
      width: containerSizeAnim.value,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: containerColorAnim.value,
        borderRadius: BorderRadius.all(
          Radius.circular(containerBorderRadiusAnim.value)
        )
      ),
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            // o TextFormField dentro da linha precisa estra dentro de um container pra se adequar ao tamanho
            Container(
              width: 120, // adicionamos o width pra input do search funcionar
              padding: EdgeInsets.only(left: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Search...",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  style: TextStyle(
                    // estilo do texto digitado no input
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }