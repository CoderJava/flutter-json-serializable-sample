import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_serializable_sample/sample1/sample1.dart';
import 'package:json_serializable_sample/sample2/sample2.dart';
import 'package:json_serializable_sample/sample3/sample3.dart';
import 'package:json_serializable_sample/sample4/sample4.dart';

class ApiService {
  final client = http.Client();
  final baseUrl = "http://api.bengkelrobot.net:8001";

  Future<Sample1> getSample1() async {
    var response = await client.get(
      "$baseUrl/sample1",
      headers: {"accept": "application/json"},
    );
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return Sample1.from(responseJson);
    } else {
      return null;
    }
  }

  Future<Sample2> getSample2() async {
    var response = await client.get(
      "$baseUrl/sample2",
      headers: {"accept": "application/json"},
    );
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return Sample2.fromJson(responseJson);
    } else {
      return null;
    }
  }

  Future<Sample3> getSample3() async {
    var response = await client.get(
      "$baseUrl/sample3",
      headers: {"accept": "application/json"},
    );
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      return Sample3.fromJson(jsonResponse);
    } else {
      return null;
    }
  }

  Future<Sample4> getSample4() async {
    var response = await client.get(
      "$baseUrl/sample4",
      headers: {"accept": "application/json"},
    );
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      return Sample4.fromJson(jsonResponse);
    } else {
      return null;
    }
  }
}
