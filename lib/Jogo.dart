import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _result = 'pedra';

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
                    padding: EdgeInsets.all(9),
                    child: Image.asset(
                      'images/padrao.png',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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