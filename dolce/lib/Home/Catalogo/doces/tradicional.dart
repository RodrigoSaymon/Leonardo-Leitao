import 'package:flutter/material.dart';

import '../list_custom.dart';

class Tradicional extends StatefulWidget {
  Tradicional({
    Key? key,
  }) : super(key: key);

  var tradicionalState = _TradicionalState;

  @override
  State<Tradicional> createState() => _TradicionalState();
}

class _TradicionalState extends State<Tradicional> {
  var catalogo = <Widget>[];

  var item = ListCustom(
    imagem:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREjm4JV4FlxHFwNpmYjhSyWxzS-BYo8iA6Ttjxuqg37ZX4SRxuXXReSJbq6-Nhm3yNG5c&usqp=CAU',
    nome: 'index',
    descricao: 'Descrição do Produto',
    preco: '80',
  );

  var nome = 0;

  void produto() {
    setState(() {
      catalogo.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: catalogo.length,
        itemBuilder: (BuildContext context, index) => item);
  }
}
