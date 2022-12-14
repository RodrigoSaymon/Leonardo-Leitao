import 'package:flutter/material.dart';
import 'bottoes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Dolce Sonho Confeitaria',
            style: TextStyle(
                color: Color.fromRGBO(255, 228, 227, 1),
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
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/image/novoLogo.png',
                    width: double.infinity,
                    height: 300,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Bottoes(
                            icone: Icons.payment,
                            imagem: Image.network(
                                'https://bebe.abril.com.br/wp-content/uploads/2016/10/receita-cupcake-gourmet-cappuccino3.jpg',
                                fit: BoxFit.cover),
                            palavra: 'Pagamentos',
                            caminho: '/catalogo',
                          ),
                          Bottoes(
                            icone: Icons.list,
                            imagem: Image.network(
                                'https://www.receiteria.com.br/wp-content/uploads/brigadeiro-gourmet-730x477.jpg',
                                fit: BoxFit.cover),
                            palavra: 'Pedidos',
                            caminho: '/catalogo',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Bottoes(
                            icone: Icons.request_quote,
                            imagem: Image.network(
                                'https://www.guiadasemana.com.br/contentFiles/system/pictures/2015/5/133525/original/cake-pop.jpg',
                                fit: BoxFit.cover),
                            palavra: 'Financeiro',
                            caminho: '/catalogo',
                          ),
                          Bottoes(
                            icone: Icons.plumbing,
                            imagem: Image.network(
                                'https://i0.wp.com/www.mildicasdemae.com.br/wp-content/uploads/2014/06/cajuzinho.jpg?resize=600%2C400&ssl=1',
                                fit: BoxFit.cover),
                            palavra: 'Planejamento',
                            caminho: '/catalogo',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
