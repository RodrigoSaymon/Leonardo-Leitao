import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// ignore: must_be_immutable
class Bottoes extends StatelessWidget {
  String palavra;
  String caminho;
  Image imagem;
  IconData icone;
  Bottoes(
      {Key? key,
      required this.caminho,
      required this.palavra,
      required this.imagem,
      required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(caminho);
        },
        child: Stack(children: [
          Container(
              width: 170,
              height: 170,
              child: Opacity(opacity: 0.5, child: imagem)),
          Container(
              decoration: BoxDecoration(
                  // color: Colors.white,
                  ),

              // color: Color.fromRGBO(247, 219, 227, 1),
              // Color.fromRGBO(46, 24, 68, 1),

              width: 170,
              height: 170,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Icon(
                    icone,
                    size: 70,
                    color: Color.fromRGBO(46, 24, 68, 1),
                  ),
                  Text(
                    palavra,
                    style: const TextStyle(
                        fontSize: 27,
                        color: Color.fromRGBO(46, 24, 68, 1),
                        fontWeight: FontWeight.bold
                        // Color.fromRGBO(46, 24, 68, 1),
                        ),
                  ),
                ],
              )

              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(
              //     style: ButtonStyle(

              //       backgroundColor: MaterialStateProperty.all(
              //         const Color.fromRGBO(46, 24, 68, 1),
              //       ),
              //     ),
              //     onPressed: ()
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         const Icon(Icons.check,
              //             size: 10, color: Color.fromRGBO(255, 228, 227, 1)),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //
              //         ),
              //       ],
              //     ),
              //   ),
              ),
        ]),
      ),
    );
  }
}
