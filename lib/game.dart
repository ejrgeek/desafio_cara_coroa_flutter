import 'package:flutter/material.dart';

class Game extends StatefulWidget {

  int _valueCoin;

  Game(this._valueCoin, {Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {

    Map<int, String> _positionCoin = {
      0: 'images/moeda_cara.png',
      1: 'images/moeda_coroa.png',
    };

    String _coin;

    setState(() {
      _coin = _positionCoin[widget._valueCoin];
    });

    void _back() => Navigator.pop(context);

    return Scaffold(

      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(97, 189, 140, 1),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_coin),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: (){
                  _back();
                },
                child: Image.asset('images/botao_voltar.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}