import 'package:flutter/material.dart';

import '../tab_custom.dart';
import 'doces/decorados.dart';
import 'doces/finos.dart';
import 'doces/gourmet.dart';
import 'doces/simples.dart';
import 'doces/tradicional.dart';

class CatalogoPage extends StatefulWidget {
  const CatalogoPage({Key? key}) : super(key: key);

  @override
  State<CatalogoPage> createState() => _CatalogoPageState();
}

class _CatalogoPageState extends State<CatalogoPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
            'Catálogo',
            style: TextStyle(
              color: Color.fromRGBO(46, 24, 68, 1),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          bottom: TabBar(tabs: [
            TabCustom(
              tipo: 'Tradici',
            ),
            TabCustom(tipo: 'Gourm'),
            TabCustom(tipo: 'Finos'),
            TabCustom(tipo: 'Decora'),
            TabCustom(tipo: 'Simple'),
          ]),
        ),
        body: TabBarView(
          children: [Tradicional(), Gourmet(), Finos(), Decorados(), Simples()],
        ),
      ),
    );
// assets/image/fundo.jpeg
    //       body: SingleChildScrollView(
    //         child: ListCustom(
    //           imagem:
    //               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKGMCwFv6Q1g4rX8vmEGXatzRG-mUaSURt5UEQWpY&s',
    //           nome: 'Nome do produto',
    //           descricao: 'descrição do produto',
    //           preco: '80',
    //         ),
    //       )),
    // );
  }
}


// import 'package:flutter/material.dart';
// import 'components/buttom_custom.dart';
// import 'components/primeiro1_page.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int contador = 0;

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           actions: [
//             Icon(
//               Icons.flutter_dash,
//               size: 40,
//             ),
//             SizedBox(
//               width: 10,
//             ),
//           ],
//           title: Row(
//             children: const [
//               Text(
//                 '2º Encontro de flutter do RN',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//           bottom: const TabBar(tabs: [
//             Tab(
//               text: '1º Encontro',
//               icon: Icon(Icons.home),
//             ),
//             Tab(
//               text: '2º Encontro',
//               icon: Icon(Icons.star),
//             ),
//             Tab(
//               text: '3º Encontro',
//               icon: Icon(Icons.person),
//             ),
//           ]),
//         ),
//         body: TabBarView(children: [
//           SegundoEncontro(),
//           Stack(
//             children: [
//               Center(
//                 child: Container(
//                   alignment: Alignment.center * .05,
//                   width: mediaQuery.width,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/encontro4.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         '2º Encontro de Flutterr do RN',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 53),
//                       Center(
//                         child: Text(
//                           '$contador',
//                           style: TextStyle(
//                               fontSize: 100, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 145,
//                       ),
//                       ButtomCustom(
//                         function: () {
//                           setState(() {
//                             contador++;
//                           });
//                         },
//                         child: Text('Aperte'),
//                       ),
//                       ButtomCustom(
//                         child: Text('Não Aperte'),
//                         function: () {
//                           setState(
//                             () {
//                               if (contador >= 1) {
//                                 contador--;
//                               } else {
//                                 contador == 0;
//                               }
                            
//                             },
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Center(
//             child: Text(
//               'Em Breve!!!',
//               style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }