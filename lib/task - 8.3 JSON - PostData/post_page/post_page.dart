import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../post_modal/post_modal.dart';
import '../post_provider/post_provider.dart';

class postPage extends StatelessWidget {
  const postPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        centerTitle: true,
        title: Text('Post'),
      ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: postProvider.ps.posts.length,
                itemBuilder: (context, index) => Card(
                      elevation: 4,
                      // margin: EdgeInsets.all(5),
                      color: Colors.white,
                      child: ListTile(
                        leading:
                            Text(postProvider.ps.posts[index].id.toString()),
                        title: Text(
                          textAlign: TextAlign.center,
                          postProvider.ps.posts[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        subtitle: Column(children: [
                          Text(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            postProvider.ps.posts[index].reactions.dislikes
                                .toString(),
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          // height: height * 0.03,
                          // ),
                          // Row(
                          // children: [
                          // Icon(
                          // Icons.remove_red_eye_outlined,
                          // size: 23,
                          // ),
                          // SizedBox(
                          // width: width * 0.01,
                          // ),
                          // Text(
                          // postsProvider.postsModal.posts[index].views
                          //     .toString(),
                          // style: TextStyle(
                          // fontSize: 16, fontWeight: FontWeight.w500),
                          // ),
                          // SizedBox(width: width * 0.2,),
                          // Icon(
                          // Icons.perm_identity_sharp,
                          // size: 23,
                          // ),
                          // SizedBox(
                          // width: width * 0.01,
                          // ),
                          // Text(
                          // postsProvider.postsModal.posts[index].userId
                          //     .toString(),
                          // style: TextStyle(
                          // fontSize: 16, fontWeight: FontWeight.w500),
                          // ),
                          // SizedBox(width: width * 0.2,),
                          // Icon(
                          // Icons.favorite_border,
                          // size: 23,
                          // ),
                          // SizedBox(
                          // width: width * 0.01,
                          // ),
                          // Text(
                          // postsProvider
                          //     .postsModal.posts[index].reactions.likes
                          //     .toString(),
                          // style: TextStyle(
                          // fontSize: 16, fontWeight: FontWeight.w500),
                          // ),
                        ]),
                      ),
                    ))));
    // SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
    //   child: Column(
    //     children: [
    //       ...List.generate(postProvider.ps.posts.length, (index) {
    //         var save=postProvider.ps.posts[index];
    //         return Container(
    //           height: 100,
    //           width: 100,
    //           child: Text(save.title),
    //
    //         );
    //       },)
    //     ],
    //   ),
    // )
    // ListView.builder(
    //
    //     itemCount: postProvider.postModal.posts.length,
    //     itemBuilder: (context, index) =>
    //  // var post = postProvider.postModel.posts[index];
    //
    //         Card(
    //           color: Colors.grey.shade100,
    //           child:  ListTile(
    //
    //
    //             title: Text(post.title),
    //             // // subtitle: Text(postProvider.userList[index].username),
    //             // //
    //             // // trailing: Column(
    //             // //   mainAxisAlignment: MainAxisAlignment.center,
    //             // //   children: [
    //             // //     Text(postProvider.userList[index].company.name),
    //             // //     Text(postProvider.userList[index].address.city)
    //             // //     // Text(userProvider.userList[index].address.geo.lat)
    //             // //
    //             // //   ],
    //
    //
    //
    //
    //
    //
    //
    //             // ),
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //           ),
    //         )),
  }
}

int index = 0;
