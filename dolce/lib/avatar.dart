import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({Key? key, this.avatar1, avatar2, this.salvar}) : super(key: key);

  String? avatar1;
  String avatar2 = 'https://avatars.githubusercontent.com/u/102190588?v=4';
  void Function(String?)? salvar;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: avatar1 ?? avatar2,
        decoration: InputDecoration(labelText: 'URL do Avatar'),
        onSaved: salvar);
  }
}
