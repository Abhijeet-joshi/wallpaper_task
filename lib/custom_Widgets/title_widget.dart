import 'package:flutter/material.dart';

class TitleAndWidget extends StatelessWidget {
  String title;
  Widget child;
  TitleAndWidget({required this.child, required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          child
        ],
      ),
    );
  }
}
