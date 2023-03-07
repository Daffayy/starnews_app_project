import 'dart:convert';

List<ArticleScreen> articleScreenFromJson(String str) => List<ArticleScreen>.from(json.decode(str).map((x) => ArticleScreen.fromJson(x)));

String articleScreenToJson(List<ArticleScreen> data) => json.encode
  (List<dynamic>.from(data.map((x) => x.toJson())));

class ArticleScreen {
  ArticleScreen({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ArticleScreen.fromJson(Map<String, dynamic> json) => ArticleScreen(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
