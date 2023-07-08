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
                "ORDER HISTORY",
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
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(width: 20,),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .26,
                  child: TextField(
                    readOnly: true,
                    onTap: () => selectFromDate(context),
                    decoration: InputDecoration(
                      labelText:"From Date",
                      hintText: fromDate != null ? dateFormat.format(fromDate!) : "From Date", // Format the fromDate
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.date_range),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width * .26,
                  child: TextField(
                    readOnly: true,
                    onTap: () => selectToDate(context),
                    decoration: InputDecoration(
                      labelText: "To Date",
                      hintText: toDate != null ? toDate.toString() : "To Date",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                      suffixIcon: Icon(Icons.date_range),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),

            ],
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .18,
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Itemdetails();
                        },));
                      },
                      child: Text(
                        "Load",
                        style: TextStyle(color: Colors.white),
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

