import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController firstnumberController = TextEditingController();
  TextEditingController secondnumberController = TextEditingController();

  num _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: firstnumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: '数字を入力',
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: secondnumberController,
                    keyboardType:  TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: '数字を入力',
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('結果  :   $_counter'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    setState((){
                      _counter = 0;
                      _counter = num.parse(firstnumberController.text) + num.parse(secondnumberController.text);
                    });
                  },
                  child: Text('+')
                ),
                ElevatedButton(
                  onPressed: (){
                    setState((){
                      _counter = 0;
                      _counter = num.parse(firstnumberController.text) - num.parse(secondnumberController.text);
                    });
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState((){
                      _counter = 0;
                      _counter = num.parse(firstnumberController.text) * num.parse(secondnumberController.text);
                    });
                  },
                  child: Text('×'),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState((){
                      _counter = 0;
                      _counter = num.parse(firstnumberController.text) / num.parse(secondnumberController.text);
                    });
                  },
                  child: Text('÷'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
