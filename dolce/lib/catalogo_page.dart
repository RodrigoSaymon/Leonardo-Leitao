import 'package:flutter/material.dart';

import 'list_custom.dart';

class CatalogoPage extends StatelessWidget {
  const CatalogoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 228, 227, 1),
          title: const Text(
            'Catalogo',
            style: TextStyle(
              color: Color.fromRGBO(46, 24, 68, 1),
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: ListCustom(
            imagem:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKGMCwFv6Q1g4rX8vmEGXatzRG-mUaSURt5UEQWpY&s',
            nome: 'Nome do produto',
            descricao: 'descrição do produto',
            preco: '80',
          ),
        ));
  }
}
