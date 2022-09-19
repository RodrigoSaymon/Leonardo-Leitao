import 'package:dolce/components/user-tile.dart';
import 'package:dolce/data/dummy_users.dart';
import 'package:dolce/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/users.dart';

class OrcamentoPage extends StatefulWidget {
  const OrcamentoPage({Key? key}) : super(key: key);

  @override
  State<OrcamentoPage> createState() => _OrcamentoPageState();
}

class _OrcamentoPageState extends State<OrcamentoPage> {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<Users>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Orçamento'),
        actions: [
          IconButton(
              onPressed: () {
                users.put(User(
                    id: '2',
                    name: 'juli',
                    email: 'Juli@gmail.com',
                    avatarUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5N02tJapFptK4nLKRYTxzoyfaPviJx0TvaP0XAO9hkDw_VlZC9ikRkx1lhx3pAUUy85w&usqp=CAU'));

                // users.remove(users.ByIndex(0));
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: ((context, i) => Container(
              // height: 50,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(46, 24, 68, 1),
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      users.ByIndex(i).avatarUrl.toString(),
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                title: Text(
                  users.all.elementAt(i).name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(users.ByIndex(i).email.toString()),
                trailing: Text(
                  users.ByIndex(i).id.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ),
    );
  }
}
