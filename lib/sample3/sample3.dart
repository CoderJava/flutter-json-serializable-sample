import 'package:json_annotation/json_annotation.dart';
part 'sample3.g.dart';

@JsonSerializable()
class Sample3 {
  String name;
  int age;
  List<String> hobi;

  Sample3({this.name, this.age, this.hobi});

  @override
  String toString() {
    return 'Sample3{name: $name, age: $age, hobi: $hobi}';
  }

  factory Sample3.fromJson(Map<String, dynamic> json) => _$Sample3FromJson(json);

  Map<String, dynamic> toJson() => _$Sample3ToJson(this);

}

