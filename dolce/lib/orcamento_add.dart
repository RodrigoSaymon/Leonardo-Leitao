// ignore_for_file: unused_local_variable

import 'package:dolce/avatar.dart';
import 'package:dolce/user.dart';
import 'package:dolce/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrcamentoAdd extends StatefulWidget {
  const OrcamentoAdd({Key? key, r}) : super(key: key);

  @override
  State<OrcamentoAdd> createState() => _OrcamentoAddState();
}

class _OrcamentoAddState extends State<OrcamentoAdd> {
  final _form = GlobalKey<FormState>();
  final Map<dynamic, String> _formData = {};

  void _loadFormData(User user) {
    _formData['id'] = user.id.toString();
    _formData['name'] = user.name.toString();
    _formData['email'] = user.email.toString();
    _formData['avatarUrl'] = user.avatarUrl.toString();
  }

  var item = Container();
  var itensAdd = <Widget>[];
  var numero = 0;
  var checar = [false, true];
  void contar() {
    setState(() {
      if (numero == ['id']) {
        numero++;
      } else {
        numero--;
      }
      ;
      void addItem() {
        setState(
          () {
            if (numero == 1) {
              itensAdd.add(item);
            } else {
              itensAdd.remove(item);
            }
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of<dynamic>(context)!.settings.arguments as Users;
    _loadFormData(user) {
      _form;
    }

    // print(user);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Adicionar Item',
            style: TextStyle(
              color: Color.fromRGBO(255, 228, 227, 1),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final isValid = _form.currentState?.validate();
                  if (isValid == true) {
                    _form.currentState?.save();
                    Provider.of<Users>(context, listen: false).put(User(
                      id: _formData['id'],
                      name: _formData['name'],
                      email: _formData['email'],
                      avatarUrl: _formData['avatarUrl'],
                    ));
                    Navigator.of(context).pop();
                  }
                },
                icon: Icon(Icons.save))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
              children: [
                TextFormField(
                  initialValue: _formData['name'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (valui) {
                    if (valui == null || valui.isEmpty) {
                      return 'Nome Invalido';
                    }
                    if (valui.trim().length < 3) {
                      return 'Nome muito pequeno';
                    }
                  },
                  onSaved: (value) => _formData['name'] = value.toString(),
                  // print(value);
                ),
                TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (valui) {
                    if (valui == null || valui.isEmpty) {
                      return 'Email Invalido';
                    }
                    if (valui.trim().length < 3) {
                      return 'Texto muito pequeno';
                    }
                  },
                  onSaved: (value) => _formData['email'] = value.toString(),
                  // print(value);
                ),
                Avatar(
                  avatar1: _formData['avatarUrl'],
                  salvar: (value) => _formData['avatarUrl'] = value.toString(),
                )
              ],
            ),
          ),
        )

        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       CheckboxListTile(
        //         value: checar[numero],
        //         onChanged: (value) {
        //           contar();
        //         },
        //         title: const Text(
        //           'Brigadeiro',
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //         ),
        //         subtitle: const Text(
        //           'Descrição',
        //           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //         ),
        //         controlAffinity: ListTileControlAffinity.leading,
        //         secondary: Container(
        //           width: 120,
        //           child: Center(
        //               child: TextFormField(
        //             decoration: InputDecoration(
        //               border: OutlineInputBorder(),
        //               labelText: 'Quantidade',
        //               labelStyle: TextStyle(),
        //               // labelText: 'Quantidade',100
        //             ),
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           )),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
