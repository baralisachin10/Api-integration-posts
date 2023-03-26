class ModelContent {
  int? userId;
  int? id;
  String? title;
  String? body;

  ModelContent.fromjson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}
