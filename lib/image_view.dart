import 'dart:math';
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

int imageChange = Random().nextInt(17) + 1;

class _ImagesState extends State<Images> {
  void change() {
    setState(() {
      imageChange = Random().nextInt(17) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: change,
                  child: Image.asset('images/pic$imageChange.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}
