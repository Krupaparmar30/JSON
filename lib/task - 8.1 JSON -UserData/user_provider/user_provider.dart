import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:json/task%20-%208.1%20JSON%20-UserData/user_modal/user_modal.dart';

class UserProvider extends ChangeNotifier {
  List<UserModal> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString("assets/json/user_data.json");
    List users = jsonDecode(json);
    userList = users.map((e) => UserModal.fromJson(e)).toList();
    notifyListeners();
  }
  UserProvider()
  {
    jsonParsing();
  }
}
