

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/modal/json_parsing_modal.dart';

class PhotoProvider extends ChangeNotifier{
  List<Photos> photoesList=[];


  Future<List> jsonParsing()
  async {
    String json=await rootBundle.loadString('assets/json/photos.json');
    List photoes=jsonDecode(json);

    return photoes;
  }

  Future<void> fromList()
  async {
    List photoes=await jsonParsing();
    photoesList = photoes.map((e)=>Photos.fromMap(e),).toList();
    notifyListeners();
  }
  PhotoProvider()
  {
    fromList();
  }
}