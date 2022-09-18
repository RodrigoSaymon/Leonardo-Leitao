import 'package:dolce/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...DammyUser};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) =>
              Text(users.values.elementAt(index).name))),
    );
  }
}
