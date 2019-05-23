import 'package:flutter/material.dart';

import 'api_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme:
          ThemeData(primaryColor: Colors.blue, accentColor: Colors.tealAccent),
      title: "JSON Serializable Generator",
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var apiService = ApiService();
  var result = "Result in here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "JSON Serializable Generator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  apiService.getSample1().then((sample1) {
                    setState(() {
                      result = sample1.toString();
                    });
                  });
                },
                child: Text("JSON Object"),
              ),
              RaisedButton(
                onPressed: () {
                  apiService.getSample2().then((sample2) {
                    setState(() {
                      result = sample2.toString();
                    });
                  });
                },
                child: Text("JSON Object didalam JSON Object"),
              ),
              RaisedButton(
                onPressed: () {
                  apiService.getSample3().then((sample3) {
                    setState(() {
                      result = sample3.toString();
                    });
                  });
                },
                child: Text("JSON Array"),
              ),
              RaisedButton(
                onPressed: () {
                  apiService.getSample4().then((sample4) {
                    setState(() {
                      result = sample4.toString();
                    });
                  });
                },
                child: Text("JSON dengan data kompleks"),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    result,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
