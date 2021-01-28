import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  @override
  _SearchscreenState createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();
  String searchContent = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0.0),
        children: [
          Column(
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
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: searchKey,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        margin: EdgeInsets.fromLTRB(50.0, 85.0, 15.0, 85.0),
                        width: 0.6 * MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey[400],
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Container(
                          width: 0.55 * MediaQuery.of(context).size.width,
                          child: TextFormField(
                            autofocus: false,
                            style: TextStyle(
                                color: Colors.black54, fontSize: 20.0),
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                            ),
                            obscureText: false,
                            onSaved: (value) {
                              searchContent = value;
                            },
                            onChanged: (value) {
                              searchContent = value;
                            },
                            validator: (value) {
                              return null;
                            },
                            onFieldSubmitted: (value) {},
                          ),
                        ),
                      ),
                      Container(
                        width: 55.0,
                        height: 55.0,
                        child: Material(
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 2.0,
                                color: Colors.grey[400],
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: InkWell(
                              borderRadius: new BorderRadius.circular(50.0),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  size: 25,
                                ),
                              ),
                              onTap: () {
                                print(searchContent);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
        ],
      ),
    );
  }
}
