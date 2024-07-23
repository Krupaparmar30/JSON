import 'package:flutter/material.dart';
import 'package:json/task%20-%208.3%20JSON%20-Postes/post_provider/post_provider.dart';
import 'package:provider/provider.dart';

class postPage extends StatelessWidget {
  const postPage({super.key});

  @override
  Widget build(BuildContext context) {

    PostProvider postProvider =Provider.of<PostProvider>(context);
    var post=postProvider.postModal.posts[index];
    return Scaffold(
      body:

      ListView.builder(

          itemCount: postProvider.postModal.posts.length,
          itemBuilder: (context, index) =>
       // var post = postProvider.postModel.posts[index];

              Card(
                color: Colors.grey.shade100,
                child:  ListTile(


                  title: Text(post.title),
                  // // subtitle: Text(postProvider.userList[index].username),
                  // //
                  // // trailing: Column(
                  // //   mainAxisAlignment: MainAxisAlignment.center,
                  // //   children: [
                  // //     Text(postProvider.userList[index].company.name),
                  // //     Text(postProvider.userList[index].address.city)
                  // //     // Text(userProvider.userList[index].address.geo.lat)
                  // //
                  // //   ],







                  // ),









                ),
              )),
    );
  }
}
int index=0;