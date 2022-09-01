import 'package:dolce/catalogo_page.dart';
import 'package:dolce/home-page.dart';
import 'package:flutter/material.dart';

class DolceSonhoConfeitaria extends StatefulWidget {
  const DolceSonhoConfeitaria({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DolceSonhoState();
}

class DolceSonhoState extends State<DolceSonhoConfeitaria> {
  void themaClaro() {
    setState(() {
      Brightness.light;
    });
  }

  void themaEscuro() {
    setState(() {
      Brightness.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    var catalogo = '/catalogo';
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        catalogo: (context) => CatalogoPage()
      },
    );
  }
}
