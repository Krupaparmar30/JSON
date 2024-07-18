import 'package:flutter/material.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/provider/json_provider.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/view/JSON%20&%20JSON%20Parsing/json_and_json_parsing.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhotoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>json_and_json_parsing()
        },
      ),
    );
  }
}
