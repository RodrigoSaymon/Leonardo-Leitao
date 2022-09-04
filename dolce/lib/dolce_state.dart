import 'package:flutter/material.dart';

import 'Home/Catalogo/catalogo_page.dart';
import 'Home/Catalogo/novo.dart';
import 'Home/Orçamento/orcamento_add.dart';
import 'Home/Orçamento/orcamento_page.dart';
import 'Home/home-page.dart' as navegacao;

class DolceSonhoConfeitaria extends StatelessWidget {
  const DolceSonhoConfeitaria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var catalogo = '/catalogo';
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Color.fromRGBO(255, 228, 227, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: const navegacao.HomePage(),
      // initialRoute: '/',
      routes: {
        '/': (context) => const navegacao.HomePage(),
        '/catalogo': (context) => const CatalogoPage(),
        '/orcamento': (context) => const OrcamentoPage(),
        '/orcamento_add': (context) => const OrcamentoAdd(),
        '/novo': (context) => const Novo()
      },
    );
  }
}
