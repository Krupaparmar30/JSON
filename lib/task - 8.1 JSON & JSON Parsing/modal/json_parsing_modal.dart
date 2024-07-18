
class Photos {
  late String title, url;

  Photos({required this.title, required this.url});

  factory Photos.fromMap(Map m1) {
    return Photos(title: m1['title'], url: m1['url']);
  }
}
