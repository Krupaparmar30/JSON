
import 'package:flutter/material.dart';
import 'package:json/task%20-%208.1%20JSON%20-UserData/user_provider/user_provider.dart';
import 'package:provider/provider.dart';

class userPage extends StatelessWidget {
  const userPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider =Provider.of<UserProvider>(context);
    return Scaffold(
body: ListView.builder(
  itemCount: userProvider.userList.length,
  itemBuilder: (context, index) => ListTile(

  title: Text(userProvider.userList[index].name),









),),
    );
  }
}
