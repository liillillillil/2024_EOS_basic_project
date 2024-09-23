import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('EOS ToDoList'),
          leading: Icon(Icons.check_box_outlined),
        ),
        body: Container(
          height: 200,
          color: Colors.lightGreen,
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 10, color: Colors.grey)
                ),
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('EOS'),
                  Text(
                    '정재홍',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('으악악'),
                ],
              )
            ],
          ),
        )

    );
  }
}
