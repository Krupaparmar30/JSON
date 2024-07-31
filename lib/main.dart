import 'package:flutter/material.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/provider/json_provider.dart';
import 'package:json/task%20-%208.1%20JSON%20&%20JSON%20Parsing/view/JSON%20&%20JSON%20Parsing/json_and_json_parsing.dart';
import 'package:json/task%20-%208.1%20JSON%20-UserData/user_page/user_page.dart';
import 'package:json/task%20-%208.1%20JSON%20-UserData/user_provider/user_provider.dart';

import 'package:provider/provider.dart';

import 'task - 8.3 JSON - PostData/post_page/post_page.dart';
import 'task - 8.3 JSON - PostData/post_provider/post_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
         // '/': (context) => userPage()
         // '/':(context)=>json_and_json_parsing(),
          '/':(context)=>postPage(),

        },
      ),
    );
  }
}
