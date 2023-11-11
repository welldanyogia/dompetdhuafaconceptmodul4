import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsModel({
     this.status,
     this.totalResults,
     this.articles,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class Article {
  String? title;
  String? description;
  String? url;

  Article({
     this.title,
     this.description,
     this.url,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json["title"],
        description: json["description"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "url": url,
      };
}

class Source {
 
  String? name;

  Source({
     this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
