import 'package:flutter/material.dart';
import 'catalogo_page.dart';
import 'home-page.dart' as navegacao;

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
        '/catalogo': (context) => const CatalogoPage()
      },
    );
  }
}
