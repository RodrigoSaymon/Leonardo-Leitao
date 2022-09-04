import 'package:flutter/material.dart';

class ListCustom extends StatelessWidget {
  ListCustom(
      {Key? key,
      required this.imagem,
      required this.nome,
      required this.descricao,
      required this.preco})
      : super(key: key);
  String imagem;
  String nome;
  String descricao;
  String preco;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 30,
          child: Image.network(
            imagem,
            scale: 0.5,
          )),
      title: Text(
        nome,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(descricao),
      trailing: Text(
        'R\$ $preco',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
