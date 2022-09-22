import 'package:dolce/user.dart';
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
    final usuarui = User();
    void avatar() {
      if (usuarui.avatarUrl == null || usuarui.avatarUrl!.isEmpty) {
        CircleAvatar(child: Icon(Icons.person));
      }
    }

    final user = Provider.of<Users>(context);

    User();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orçamento',
            style: TextStyle(
              color: Color.fromRGBO(255, 228, 227, 1),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/orcamento_add',
                  arguments: user,
                );
                // users.put(User(
                //     id: '2',
                //     name: 'juli',
                //     email: 'Juli@gmail.com',
                //     avatarUrl:
                //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5N02tJapFptK4nLKRYTxzoyfaPviJx0TvaP0XAO9hkDw_VlZC9ikRkx1lhx3pAUUy85w&usqp=CAU'));
                // users.remove(users.ByIndex(0));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: user.count,
        itemBuilder: ((context, i) => Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromRGBO(46, 24, 68, 1),
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      user.ByIndex(i).avatarUrl.toString(),
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
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
                ),
              ),
            )),
      ),
    );
  }
}
