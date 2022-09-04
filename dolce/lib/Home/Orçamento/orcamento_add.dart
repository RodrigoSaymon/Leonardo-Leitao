import 'package:flutter/material.dart';

import '../Catalogo/doces/tradicional.dart';
import 'orcamento_page.dart';

class OrcamentoAdd extends OrcamentoPage {
  const OrcamentoAdd({Key? key}) : super(key: key);

  @override
  State<OrcamentoAdd> createState() => _OrcamentoAddState();
}

class _OrcamentoAddState extends State<OrcamentoAdd> {
  var item = Container();
  var itensAdd = <Widget>[];
  var numero = 0;
  var checar = [false, true];
  void contar() {
    setState(() {
      if (numero == 0) {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 228, 227, 1),
        title: const Text(
          'Adicionar Item',
          style: TextStyle(
            color: Color.fromRGBO(46, 24, 68, 1),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Container(
            height: 20,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(46, 24, 68, 1),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Salvar',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 228, 227, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckboxListTile(
              value: checar[numero],
              onChanged: (value) {
                contar();
              },
              title: const Text(
                'Brigadeiro',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Descrição',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Container(
                width: 120,
                child: Center(
                    child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Quantidade',
                    labelStyle: TextStyle(),
                    // labelText: 'Quantidade',100
                  ),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
