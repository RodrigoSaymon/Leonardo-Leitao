import 'package:dolce/Home/Catalogo/catalogo_page.dart';
import 'package:dolce/Home/Catalogo/novo.dart';
import 'package:dolce/Home/Or%C3%A7amento/orcamento_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Home/home-page.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75,
        child: GNav(
          backgroundColor: Color.fromRGBO(46, 24, 68, 1),
          selectedIndex: paginaAtual,
          tabs: [
            GButton(
              onPressed: () {
                pc.animateToPage(0,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              icon: Icons.home,
              text: 'Home',
              textStyle: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(255, 228, 227, 1),
              ),
              iconColor: Color.fromRGBO(255, 228, 227, 1),
              iconActiveColor: Color.fromRGBO(255, 228, 227, 1),
              iconSize: 40,
            ),
            GButton(
              onPressed: () {
                pc.animateToPage(1,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              icon: Icons.attach_money,
              text: 'Orçamento',
              textStyle: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(255, 228, 227, 1),
              ),
              iconColor: Color.fromRGBO(255, 228, 227, 1),
              iconActiveColor: Color.fromRGBO(255, 228, 227, 1),
              iconSize: 40,
            ),
            GButton(
              onPressed: () {
                pc.animateToPage(2,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              icon: Icons.list,
              text: 'Catálogo',
              textStyle: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(255, 228, 227, 1),
              ),
              iconColor: Color.fromRGBO(255, 228, 227, 1),
              iconActiveColor: Color.fromRGBO(255, 228, 227, 1),
              iconSize: 40,
            ),
            GButton(
              onPressed: () {
                pc.animateToPage(3,
                    duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              icon: Icons.assignment_ind,
              text: 'Clientes',
              textStyle: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(255, 228, 227, 1),
              ),
              iconColor: Color.fromRGBO(255, 228, 227, 1),
              iconActiveColor: Color.fromRGBO(255, 228, 227, 1),
              iconSize: 40,
            ),

            // ),
            // GButton(icon: Icons.attach_money, text: 'Orçamento'),
            // GButton(icon: Icons.list, text: 'Catálogo'),
            // GButton(icon: Icons.assignment_ind, text: 'Clientes'),
          ],
        ),
      ),
      body: PageView(
        controller: pc,
        children: [HomePage(), OrcamentoPage(), CatalogoPage(), Novo()],
      ),
    );
  }
}
