import 'dart:math';

class PostModal {
  late List<Post> posts;

  late int total, skip, limit;

  PostModal(
      {required this.total, required this.skip, required this.limit, required this.posts});

  factory PostModal.fromJson(Map m1)
  {
    return PostModal(total: m1['total'],
        skip: m1['skip'],
        limit: m1['limit'],
        // posts: (m1['posts'] as List).map((e)=>Post.fromJson(e)).toList());
        posts:(m1['posts'] as List).map((e)=>Post.fromJson(e)).toList());
  }
}

class Post {
  late int id, views, userId;
  late String title, body;
  late List tags;
  late Reactions reactions;

  Post({required this.id,
    required this.views,
    required this.userId,
    required this.title,
    required this.body,
    required this.tags,
    required this.reactions});

  factory Post.fromJson(Map m1) {
    return Post(
        id: m1['id'],
        views: m1['views'],
        userId: m1['userId'],
        title: m1['title'],
        body: m1['body'],
        tags: m1['tags'],
        reactions: Reactions.fromJson(m1['reactions']));
  }
}

class Reactions {
  late int like, dislikes;

  Reactions({required this.like, required this.dislikes});

  factory Reactions.fromJson(Map m1) {
    return Reactions(like: m1['likes'], dislikes: m1['dislikes']);
  }
}
