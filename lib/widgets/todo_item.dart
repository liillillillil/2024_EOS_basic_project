import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  final String title;
  final VoidCallback onDelete;
  const ToDoItem({Key?key, required this.title, required this.onDelete}) : super(key: key);

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: IconButton(
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            icon: Icon(
              isClicked == false ? Icons.favorite_outline_rounded : Icons.favorite_rounded,
              color: Colors.grey,
            )
        ),
        title: Text(widget.title),
        trailing: IconButton(
            onPressed: widget.onDelete,
            icon: Icon(Icons.delete, color: Colors.grey)
        )
    );
  }
}