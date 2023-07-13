import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Item_Details.dart';

class Orderhistory extends StatefulWidget {
  const Orderhistory({Key? key}) : super(key: key);

  @override
  _OrderhistoryState createState() => _OrderhistoryState();
}

class _OrderhistoryState extends State<Orderhistory> {
  Color color = Color(0xff0d2bd4);

  DateTime? fromDate;
  DateTime? toDate;

  Future<void> selectFromDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: fromDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        fromDate = selectedDate;
      });
    }
  }

  Future<void> selectToDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: toDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        toDate = selectedDate;
      });
    }
  }

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 80,
        title: Center(child: Text("ORDER HISTORY",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500))),
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
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: IntrinsicWidth(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: TextField(
                          style: TextStyle(),
                          readOnly: true,
                          onTap: () => selectFromDate(context),
                          decoration: InputDecoration(
                            hintText: fromDate != null
                                ? dateFormat.format(fromDate!)
                                : "From Date",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range,color: Colors.blue),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IntrinsicWidth(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: TextField(
                          readOnly: true,
                          onTap: () => selectToDate(context),
                          decoration: InputDecoration(
                            hintText: toDate != null
                                ? toDate.toString()
                                : "To Date",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range,color: Colors.blue),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height:
                              MediaQuery.of(context).size.height * 0.30,
                              width:
                              MediaQuery.of(context).size.width * 2,
                              child: ListView.builder(
                                itemCount: 1,
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.06,
                                        width:
                                        MediaQuery.of(context).size.width *
                                            2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Sl No",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Order No",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "No of Items",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Invoice n.o",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Invoice Amt",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Status",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Amount Recieved",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Itemdetails(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.20,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              2,
                                          child: ListView.separated(
                                            separatorBuilder: (context, index) {
                                              return Divider(
                                                color: Colors.grey,
                                                thickness: .3,
                                                indent: 10,
                                                endIndent: 10,
                                              );
                                            },
                                            padding: EdgeInsets.zero,
                                            physics:
                                            const ClampingScrollPhysics(),
                                            itemCount: 1,
                                            itemBuilder:
                                                (BuildContext context,
                                                int rowIndex) {
                                              return SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    2,
                                                child: ListView.builder(
                                                  itemCount: 1,
                                                  scrollDirection:
                                                  Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Container(
                                                      height: 40,
                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                          2,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "1",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "102",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "1",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "1002",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "152",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "Completed",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              child: Text(
                                                                "150",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
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
