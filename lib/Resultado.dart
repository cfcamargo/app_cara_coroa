import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {



  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "images/moeda_${widget.valor}.png";

    return Scaffold(
      backgroundColor: Color(0xff61bd86),  /*o prefixo 0xff  e colocado antes do cogido hexadecimal da cor)*/
      /*backgroundColor: Color.fromRGBO(255, 204, 128, 1),*/
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Image.asset("images/botao_voltar.png"),
            )

          ],
        ),
      ),
    );
  }
}
