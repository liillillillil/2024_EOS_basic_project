import 'package:flutter/material.dart';

class AddButton extends  StatelessWidget {
  final VoidCallback onPressed;
  const AddButton({Key?key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: onPressed,
        child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.lightGreen.withOpacity(0.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            padding: EdgeInsets.all(0),
            minimumSize: Size(50, 50)
        )
    );
  }
}