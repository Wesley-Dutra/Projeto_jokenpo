import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imageResult = AssetImage('images/padrao.png');
  var _result = 'Escolha uma opção abaixo:';

  _opcaoSelecionada (String escolhaUsuario) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(opcoes.length);

    setState(() {
      _imageResult = AssetImage('images/'+opcoes[numero]+'.png');
    });

    if (opcoes[numero] == escolhaUsuario) {
      setState(() {
        _result = 'Empate!';
      });
    } else {
      switch (escolhaUsuario) {
        case 'pedra':
          if (opcoes[numero] == 'tesoura') {
            setState(() {
              _result = 'Parabéns, você ganhou!';
            });
          } else {
            setState(() {
              _result = 'Infelizmente você perdeu!';
            });
          }
          break;
        case 'papel':
          if (opcoes[numero] == 'pedra') {
            setState(() {
              _result = 'Parabéns, você ganhou!';
            });
          } else {
            setState(() {
              _result = 'Infelizmente você perdeu!';
            });
          }
          break;
        case 'tesoura':
          if (opcoes[numero] == 'papel') {
            setState(() {
              _result = 'Parabéns, você ganhou!';
            });
          } else {
            setState(() {
              _result = 'Infelizmente você perdeu!';
            });
          }
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Escolha do App:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, bottom: 35),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.purple.shade200, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                      color: Colors.grey.shade100
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: _imageResult,
                      width: 90,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Text(
                  '$_result',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => _opcaoSelecionada('pedra'),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/pedra.png',
                        width: 70,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        shape: CircleBorder(side: BorderSide(width: 3, color: Colors.purple.shade200))
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _opcaoSelecionada('papel'),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/papel.png',
                        width: 70,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        shape: CircleBorder(side: BorderSide(width: 3, color: Colors.purple.shade200))
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _opcaoSelecionada('tesoura'),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/tesoura.png',
                        width: 70,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      shape: CircleBorder(side: BorderSide(width: 3, color: Colors.purple.shade200))
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}