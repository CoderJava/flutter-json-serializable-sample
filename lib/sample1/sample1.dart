import 'package:json_annotation/json_annotation.dart';

part 'sample1.g.dart';

@JsonSerializable()
class Sample1 {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "age")
  int age;

  Sample1({this.name, this.age});

  @override
  String toString() {
    return 'Sample1{name: $name, age: $age}';
  }

  factory Sample1.from(Map<String, dynamic> json) => _$Sample1FromJson(json);

  Map<String, dynamic> toJson() => _$Sample1ToJson(this);
}
