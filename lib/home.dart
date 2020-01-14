import 'dart:math';

import 'package:cara_coroa/game.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _play(){
      int _value = Random().nextInt(2);
      Navigator.push(
        context, 
        MaterialPageRoute( builder: (context) => Game(_value))
        );
    }

    return Scaffold(

      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(97, 189, 140, 1),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: (){
                  _play();
                },
                child: Image.asset('images/botao_jogar.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}