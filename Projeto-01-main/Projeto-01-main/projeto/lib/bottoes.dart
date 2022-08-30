import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bottoes extends StatelessWidget {
  String palavra;

  Function()? onPressed;

  Bottoes({Key? key, required this.onPressed, required this.palavra})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.check,
              size: 50,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              child: Text(
                palavra,
                style: const TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
