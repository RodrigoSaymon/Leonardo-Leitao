import 'package:flutter/material.dart';
import 'bottoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 228, 227, 1),
        title: const Center(
          child: Text(
            'Dolce Sonho Confeitaria',
            style: TextStyle(
                color: Color.fromRGBO(46, 24, 68, 1),
                fontWeight: FontWeight.bold,
                fontSize: 22,
                fontFamily: 'Halimun'),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/image/brasão.png',
                width: 300,
                height: 300,
              ),
            ),
            Bottoes(
                palavra: 'Catálogo de Produtos',
                onPressed: () {
                  Navigator.of(context).pushNamed('/catalogo');
                }),
            Bottoes(
              palavra: 'Fazer um Orçamento',
              onPressed: () {},
            ),
            Bottoes(
              palavra: 'Receber Pagamentos',
              onPressed: () {},
            ),
            Bottoes(
              palavra: 'Cadastro de Pedidos',
              onPressed: () {},
            ),
            Bottoes(
              palavra: 'Cadastro de Clientes',
              onPressed: () {},
            ),
            Bottoes(
              palavra: 'Situação Financeira',
              onPressed: () {},
            ),
            Bottoes(
              palavra: 'Planejamento Anual',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
