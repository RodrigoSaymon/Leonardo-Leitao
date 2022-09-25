import 'package:flutter/material.dart';

import 'user.dart';

class UserTile extends ListTile {
  UserTile(this.user, this.ByIndex);

  User user;
  dynamic ByIndex;
  get i => null;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl!.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl.toString()),
          );

    return ListTile(
        leading: avatar,
        title: Text(
          user.all.elementAt(i).name.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(user.ByIndex(i).email.toString()),
        trailing: Container(
          width: 100,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/orcamento_add',
                      arguments: user,
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.orange,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))
            ],
          ),
        ));
  }
}
