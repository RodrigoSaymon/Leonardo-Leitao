import 'package:flutter/material.dart';

class OrcamentoPage extends StatefulWidget {
  const OrcamentoPage({Key? key}) : super(key: key);

  @override
  State<OrcamentoPage> createState() => _OrcamentoPageState();
}

class _OrcamentoPageState extends State<OrcamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              height: 20,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(46, 24, 68, 1)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/orcamento_add');
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Item',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 228, 227, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    )),
              ))
        ],
        backgroundColor: const Color.fromRGBO(255, 228, 227, 1),
        title: const Text(
          'Orçamento',
          style: TextStyle(
            color: Color.fromRGBO(46, 24, 68, 1),
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
