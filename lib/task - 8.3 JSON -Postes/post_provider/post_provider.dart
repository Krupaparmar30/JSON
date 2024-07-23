import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/task%20-%208.3%20JSON%20-Postes/post_modal/post_modal.dart';

class PostProvider extends ChangeNotifier {
  late PostModal postModal;

  Future<void> intiPost() async {
    String json = await rootBundle.loadString("assets/json/post.json");
    final response=jsonDecode(json);
    postModal =PostModal.fromJson(response);
    notifyListeners();
  }
  PostProvider()
  {
    intiPost();
  }
}
