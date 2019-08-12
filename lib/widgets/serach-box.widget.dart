import 'package:balta_flutter_animations/widgets/product/animated-input.widget.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> with SingleTickerProviderStateMixin {

  bool menuOpened = false;
  AnimationController _controller;

  // inicializa o metodo pai
  @override
  void initState() {
    super.initState();
    // esse é só o controlador da animação e não a animação em si ainda
    _controller = new AnimationController(
      vsync: this, 
      duration: Duration(
        seconds: 1, // duração da animação
      ),
    );
  }

  // importante pra não deixar nada aberto na aplicação
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInput(controller: _controller),
        FlatButton(
          onPressed: () {
            // _controller.forward() da o play da animação
            !menuOpened ? _controller.forward() : _controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller, // precisamos do controller pra saber o progresso da animação, vai durar 1 segundo
            semanticLabel: 'More',
          ),
        )
      ],
    );
  }
}