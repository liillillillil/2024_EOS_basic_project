import 'package:eos_todolist/widgets/add_button.dart';
import 'package:eos_todolist/widgets/todo_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List toDoLists = [];

  @override
  void initState() {
    super.initState();
    toDoLists.add("1111111");
    toDoLists.add("2222222");
    toDoLists.add("3333333");
  }

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
              padding: EdgeInsets.all(25),
              child: Row(
                  children: [
                    Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 10, color: Colors.grey),
                            borderRadius: BorderRadius.circular(70)
                        ),
                        child: Center(
                            child: Image.asset('assets/images/eos_logo.png.png')
                        )
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '정재홍',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text('으악악'),
                        ],
                      ),
                    ),
                  ]
              )
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(padding:EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: MediaQuery.of(context).size.width + 100,
                      height: 500,
                      decoration: BoxDecoration(
                          color:  Color(0xFFA4C639).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    )
                ),
                Positioned(
                  top: 20,
                  left: MediaQuery.of(context).size.width / 2 -75,
                  child: Container(
                    width: 150,
                    height: 38,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text(
                        "To do list",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 40, right: 25),
                  child: Container(
                    child: ListView.builder(
                        itemCount: toDoLists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ToDoItem(
                            title: toDoLists[index],
                            onDelete: () {
                              setState(() {
                                toDoLists.removeAt(index);
                              });
                            },
                          );
                        }
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    right: 40,
                    child: AddButton(
                        onPressed: () {
                          setState(() {
                            toDoLists.add("+++++++");
                          });
                        }
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}