import 'package:flutter/material.dart';

class OrcamentoPage extends StatelessWidget {
  const OrcamentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 228, 227, 1),
        title: const Text(
          'Fazer Orçamento',
          style: TextStyle(
            color: Color.fromRGBO(46, 24, 68, 1),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
