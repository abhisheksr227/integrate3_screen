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
  List<String> statusList = [
    'Pending Confirmation',
    'Confirmed',
    'Items Collected',
    'Pending',
    'In Process',
    'Processed',
    'Ready for Collection',
    'In Transit',
    'Delivered',
  ];

  Color color = Color(0xff0d2bd4);

  int selectedRowIndex = -1;
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = true;
    });
  }

  void selectRow(int index) {
    setState(() {
      selectedRowIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 80,
        title: Center(child: Text("ORDER STATUS",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.refresh_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                              width:30,
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
                              width: 150,
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
                        height: 170,
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int rowIndex) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    selectRow(rowIndex);
                                    toggleVisibility();
                                  },
                                  child: Container(
                                    color: selectedRowIndex == rowIndex ? Colors.grey : null,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 40,
                                          alignment: Alignment.center,
                                          child: Text("1"),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 40,
                                            alignment: Alignment.center,
                                            child: Text("1002"),
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 40,
                                          alignment: Alignment.center,
                                          child: Text("2"),
                                        ),
                                        Container(
                                          width: 150,
                                          height: 40,
                                          alignment: Alignment.center,
                                          child:Center(child: Text(statusList[rowIndex]))
                                        ),
                                      ],
                                    ),
                                  ),
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
            SizedBox(height: 20,),
            if(isVisible)
            SizedBox(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "ITEM DETAILS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800]),
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text("Order No"),
                            SizedBox(width: 26),
                            Text(":"),
                            SizedBox(width: 15),
                            Text("12xx")
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Date"),
                            SizedBox(width: 53),
                            Text(":"),
                            SizedBox(width: 15),
                            Text("20-04-2023")

                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Status"),
                            SizedBox(width: 42),
                            Text(":"),
                            SizedBox(width: 15),
                            Text("Completed")
                          ],
                        ),SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Order Type"),
                            SizedBox(width: 15),
                            Text(":"),
                            SizedBox(width: 15),
                            Text("Express")
                          ],
                        ),

                        SizedBox(
                          height: 40,
                        ),Text("PRESS & FOLD"),
                        SizedBox(height: 30,),
                        Center(child: Text("Shirts - 2")),
                        Center(child: Text("Pant - 1"))
                        ,SizedBox(
                          height: 30,
                        ),Text("PRESS & HANG"),
                        SizedBox(height: 10,),
                        Center(child: Text("Shirts - 2")),
                        Center(child: Text("Pant - 4")),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

