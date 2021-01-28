import 'package:flutter/material.dart';

class Minescreen extends StatefulWidget {
  @override
  _MinescreenState createState() => _MinescreenState();
}

class _MinescreenState extends State<Minescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Mine"),
        ),
      ),
    );
  }
}
