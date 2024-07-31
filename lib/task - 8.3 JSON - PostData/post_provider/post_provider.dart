import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../post_modal/post_modal.dart';

class PostProvider extends ChangeNotifier {
  late PostModal ps;
  Future<void> intiPost() async {
    String json = await rootBundle.loadString("assets/json/post.json");
    final response=jsonDecode(json);
    ps = PostModal.fromJson(response);

    // postModal =PostModal.fromJson(response);

    notifyListeners();
  }
  PostProvider()
  {
    intiPost();
  }
}
