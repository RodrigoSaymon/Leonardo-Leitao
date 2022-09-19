import 'package:flutter/material.dart';
import '../models/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5N02tJapFptK4nLKRYTxzoyfaPviJx0TvaP0XAO9hkDw_VlZC9ikRkx1lhx3pAUUy85w&usqp=CAU'),
          );

    return ListTile(
      leading: avatar,
    );
  }
}
