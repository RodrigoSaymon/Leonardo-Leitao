import 'package:flutter/material.dart';
import 'bottoes.dart';

void main() {
  runApp(const DolceSonhoConfeitaria());
}

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
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                onPressed: () {},
              ),
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
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Rodrigo());
// }

// class Rodrigo extends StatefulWidget {
//   const Rodrigo({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return RodrigoState();
//   }
// }

// class RodrigoState extends State<Rodrigo> {
//   var pertuntas = ['Nome', 'Idade', 'Endereço', 'Telefone'];

//   var incrementoIndex = 0;

//   void perguntado() {
//     setState(() {
//       incrementoIndex++;
//     });
//   }

//   void desperguntado() {
//     setState(() {
//       incrementoIndex--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Perguntador App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 pertuntas[incrementoIndex],
//                 style:
//                     const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: desperguntado,
//                     child: const Icon(Icons.remove),
//                   ),
//                   const SizedBox(
//                     width: 30,
//                   ),
//                   ElevatedButton(
//                     onPressed: perguntado,
//                     child: const Icon(Icons.add),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
