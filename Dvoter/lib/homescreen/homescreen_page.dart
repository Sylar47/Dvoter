import 'package:Dvoter/homescreen/hot_page.dart';
import 'package:Dvoter/homescreen/new_page.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                )
              ],
            ),
            height: 0.25 * MediaQuery.of(context).size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 0.49 * MediaQuery.of(context).size.width,
                  child: Material(
                    child: Ink(
                      child: InkWell(
                        borderRadius: new BorderRadius.circular(25.0),
                        child: Center(
                          child: Icon(
                            Icons.grade,
                            color: Colors.orange,
                            size: 50,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Hotpage()));
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 0.15 * MediaQuery.of(context).size.height,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),
                Container(
                  width: 0.49 * MediaQuery.of(context).size.width,
                  child: Material(
                    child: Ink(
                      child: InkWell(
                        borderRadius: new BorderRadius.circular(25.0),
                        child: Center(
                          child: Icon(
                            Icons.new_releases,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Newpage()));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.66 * MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
