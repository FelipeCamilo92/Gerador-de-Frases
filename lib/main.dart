import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

var _frases = [
  "Quem vive a vida orquestrada pelos outros, acaba desafinado e perdendo o ritmo.",
  "A pior coisa em se viver com idiotas,é saber que no final das contas vc tambem vira um.",
  "Tem dia que você acorda feliz e vai dormir triste, outros você acorda triste e vai dormir feliz. O que você faz nesse tempo conta muito!",
  "Tenho um apelo a fazer, sejam livres de vossas prisões sentimentais, libertem-se! E aguardem a grande maravilha de um novo dia.",
  "A inteligencia humana tem limites, já a estupides não tem limites...",
];

var _fraseGerada = "Clique abaixo para gerar uma frase!";

void _gerarFrase(){

  // 0, 1, 2, 3
  var numeroSorteado = Random().nextInt( _frases.length);

  setState(() {
    _fraseGerada = _frases[ numeroSorteado ];
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
    padding: EdgeInsets.all(16),
    width: double.infinity,
    decoration: BoxDecoration(
    border: Border.all(width: 3, color: Colors.amberAccent)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Image.asset("images/frases.jpg"),
      Text(
      _fraseGerada,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 17,
          fontStyle: FontStyle.italic,
          color: Colors.black
        ),
      ),
      ElevatedButton(
        onPressed: _gerarFrase,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.lightGreen,
        ),
        child: Text(
          "Nova Frase",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),
        ),
      )
    ],
    ),
    ),
    );
  }
}