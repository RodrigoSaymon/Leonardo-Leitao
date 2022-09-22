import 'dart:math';

import 'package:dolce/data/dummy_users.dart';
import 'package:flutter/cupertino.dart';

import '../user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _itens = {...DammyUser};

  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }

  User ByIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
// altera
    if (user.id != null &&
        user.id!.trim().isNotEmpty &&
        _itens.containsKey(user.id)) {
      _itens.update(
          user.id!,
          (_) => User(
                id: user.id,
                name: user.name,
                email: user.email,
                avatarUrl: user.avatarUrl,
              ));
    } else {
      final id = Random().nextDouble().toString();
// inclui
      _itens.putIfAbsent(
        id,
        () => User(
            id: id,
            name: user.name,
            email: user.email,
            avatarUrl: user.avatarUrl),
      );
    }

    notifyListeners();
  }

// remover
  void remove(User user) {
    if (user != null && user.id != null) {
      _itens.remove(user.id);

      notifyListeners();
    }
  }
}
