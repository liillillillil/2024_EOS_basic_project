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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard', 
      ),
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
          backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
          title: Text('EOS ToDoList'),
          leading: Image.asset('assets/images/eos_logo.png.png'),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              color: Colors.lightGreen.withOpacity(0.3),
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(width: 10, color: Colors.grey)),
                      child: Center(
                          child: Image.asset('assets/images/eos_logo.png.png'),),
                      ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '정재홍',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15,
                        ),
                        Text('으악악'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              color: Color(0xFFA4C639).withOpacity(0.1),
            )
          ],
        )
    );
  }
}
