import 'package:flutter/material.dart';

class TabCustom extends StatelessWidget {
  TabCustom({Key? key, required this.tipo}) : super(key: key);

  String tipo;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Text(
          tipo,
          style: const TextStyle(
            color: Color.fromRGBO(46, 24, 68, 1),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
