import 'package:flutter/material.dart';

class TabCustom extends StatelessWidget {
  TabCustom({Key? key, required this.tipo}) : super(key: key);

  String tipo;

  @override
  Widget build(BuildContext context) {
    return Tab(
      iconMargin: EdgeInsetsGeometry.infinity,
      child: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              tipo,
              style: const TextStyle(
                color: const Color.fromRGBO(255, 228, 227, 1),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
