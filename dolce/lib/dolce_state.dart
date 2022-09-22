import 'package:dolce/inicial_page.dart' as navegacao;
import 'package:dolce/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home/Catalogo/catalogo_page.dart';
import 'Home/Catalogo/novo.dart';
import 'Home/home-page.dart';
import 'Home/home-page.dart';
import 'orcamento_add.dart';
import 'orcamento_page.dart';

class DolceSonhoConfeitaria extends StatelessWidget {
  const DolceSonhoConfeitaria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var catalogo = '/catalogo';
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(headline4: TextStyle(color: Colors.red)),
          appBarTheme: AppBarTheme(
            color: const Color.fromRGBO(46, 24, 68, 1),
          ),
        ),

        debugShowCheckedModeBanner: false,
        // home: const navegacao.HomePage(),
        // initialRoute: '/',
        routes: {
          '/': (context) => const navegacao.InicialPage(),
          '/home': (context) => const HomePage(),
          '/catalogo': (context) => const CatalogoPage(),
          '/orcamento': (context) => const OrcamentoPage(),
          '/orcamento_add': (context) => const OrcamentoAdd(),
          '/novo': (context) => const Novo()
        },
      ),
    );
  }
}
