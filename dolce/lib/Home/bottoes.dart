import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bottoes extends StatelessWidget {
  String palavra;
  String caminho;
  Bottoes({Key? key, required this.caminho, required this.palavra})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromRGBO(255, 228, 227, 1)),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(caminho);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.check,
              size: 50,
              color: Color.fromRGBO(46, 24, 68, 1),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              child: Text(
                palavra,
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(46, 24, 68, 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
