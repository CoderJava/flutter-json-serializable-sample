import 'package:json_annotation/json_annotation.dart';
part 'sample2.g.dart';

@JsonSerializable()
class Sample2 {
  String name;
  int age;
  Github github;

  Sample2({this.name, this.age, this.github});

  @override
  String toString() {
    return 'Sample2{name: $name, age: $age, github: $github}';
  }

  factory Sample2.fromJson(Map<String, dynamic> json) => _$Sample2FromJson(json);

  Map<String, dynamic> toJson() => _$Sample2ToJson(this);

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