import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String inputValue = "";

  final TextEditingController controller = new TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10) ,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Agregar Nombre...'),
                controller: controller,
                onSubmitted: (String value) {
                  onSubmitted(value);
                },
              ),
              Text(inputValue, style: TextStyle(
                fontSize: 24,
                color: Colors.blueAccent
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
