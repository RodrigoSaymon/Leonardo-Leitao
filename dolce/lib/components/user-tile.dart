import 'package:flutter/material.dart';
import '../models/user.dart';

class UserTile extends StatelessWidget {
  UserTile({this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(''),
      ),
      title: Text('rodrigo'),
      subtitle: Text('rodrigo'),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
