import 'package:flutter/material.dart';

import 'bottoes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
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
                palavra: 'Catalogo de Produtos',
                caminho: '/catalogo',
              ),
              Bottoes(
                palavra: 'Fazer um Orçamento',
                caminho: '/orcamento',
              ),
              Bottoes(
                palavra: 'Receber Pagamentos',
                caminho: '/catalogo',
              ),
              Bottoes(
                palavra: 'Cadastro de Pedidos',
                caminho: '/catalogo',
              ),
              Bottoes(
                palavra: 'Cadastro de Clientes',
                caminho: '/catalogo',
              ),
              Bottoes(
                palavra: 'Situação Financeira',
                caminho: '/catalogo',
              ),
              Bottoes(
                palavra: 'Planejamento Anual',
                caminho: '/catalogo',
              ),

              // }),
              // Bottoes(
              //   palavra: 'Fazer um Orçamento',
              //   onPressed: () {},
              // ),
              // Bottoes(
              //   palavra: 'Receber Pagamentos',
              //   onPressed: () {},
              // ),
              // Bottoes(
              //   palavra: 'Cadastro de Pedidos',
              //   onPressed: () {},
              // ),
              // Bottoes(
              //   palavra: 'Cadastro de Clientes',
              //   onPressed: () {},
              // ),
              // Bottoes(
              //   palavra: 'Situação Financeira',
              //   onPressed: () {},
              // ),
              // Bottoes(
              //   palavra: 'Planejamento Anual',
              //   onPressed: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
