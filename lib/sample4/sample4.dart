import 'package:json_annotation/json_annotation.dart';
part 'sample4.g.dart';

@JsonSerializable()
class Sample4 {
  String name;
  int age;
  List<String> hobi;
  Github github;
  List<Article> articles;

  Sample4({this.name, this.age, this.hobi, this.github, this.articles});

  @override
  String toString() {
    return 'Sample4{name: $name, age: $age, hobi: $hobi, github: $github, articles: $articles}';
  }

  factory Sample4.fromJson(Map<String, dynamic> json) => _$Sample4FromJson(json);

  Map<String, dynamic> toJson() => _$Sample4ToJson(this);

}

@JsonSerializable()
class Github {
  String username;
  int repository;

  Github({this.username, this.repository});

  @override
  String toString() {
    return 'Github{username: $username, repository: $repository}';
  }

  factory Github.fromJson(Map<String, dynamic> json) => _$GithubFromJson(json);

  Map<String, dynamic> toJson() => _$GithubToJson(this);

}

@JsonSerializable()
class Article {
  int id;
  String title;
  String subtitle;

  Article({this.id, this.title, this.subtitle});

  @override
  String toString() {
    return 'Article{id: $id, title: $title, subtitle: $subtitle}';
  }

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

}