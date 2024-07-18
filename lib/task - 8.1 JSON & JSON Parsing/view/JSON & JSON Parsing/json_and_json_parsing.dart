import 'package:flutter/material.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/provider/json_provider.dart';
import 'package:provider/provider.dart';

class json_and_json_parsing extends StatelessWidget {
  const json_and_json_parsing({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProviderFalse =
        Provider.of<PhotoProvider>(context, listen: false);
    return Scaffold(
        body: ListView.builder(
          itemCount: photoProviderFalse.photoesList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(photoProviderFalse.photoesList[index].title),
        leading: Image(image: NetworkImage(photoProviderFalse.photoesList[index].url),),
      ),

    ));
  }
}
