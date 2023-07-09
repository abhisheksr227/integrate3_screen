import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Item_Details.dart';

class Orderstushistory extends StatefulWidget {
  const Orderstushistory({Key? key}) : super(key: key);

  @override
  _OrderstushistoryState createState() => _OrderstushistoryState();
}

class _OrderstushistoryState extends State<Orderstushistory> {
  Color color = Color(0xff0d2bd4);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.blue[800],
          size: 30,
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGO",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.circle_outlined,
                color: Colors.blue[800],
              ),
              SizedBox(width: 10,)
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "ORDER STATUS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Sl No.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Order No",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "No of items",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Status",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), Divider(
                        color: Colors.grey,
                        thickness: .3,
                        indent: 10,
                        endIndent: 10,
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(parent: FixedExtentScrollPhysics()),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("1"),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("2"),
                                      ),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("2"),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("2"),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: .3,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

