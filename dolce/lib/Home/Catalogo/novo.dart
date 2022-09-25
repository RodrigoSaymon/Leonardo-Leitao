import 'package:flutter/material.dart';

class Novo extends StatelessWidget {
  const Novo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adicionar Item',
          style: TextStyle(
            color: Color.fromRGBO(46, 24, 68, 1),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Container(
            height: 20,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(46, 24, 68, 1),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Salvar',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 228, 227, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
