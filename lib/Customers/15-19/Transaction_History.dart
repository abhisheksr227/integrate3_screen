import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Transactionhistory extends StatefulWidget {
  const Transactionhistory({Key? key}) : super(key: key);

  @override
  _TransactionhistoryState createState() => _TransactionhistoryState();
}

class _TransactionhistoryState extends State<Transactionhistory> {
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
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
          child: Column(children: [
            SizedBox(height: 20,),
            Center(
              child: Text(
                "TRANSACTION HISTORY",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: IntrinsicWidth(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: TextField(
                          readOnly: true,
                          onTap: () => selectFromDate(context),
                          decoration: InputDecoration(
                            labelText: "From Date",
                            hintText: fromDate != null ? dateFormat.format(fromDate!) : "From Date",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range),
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Adjust the vertical padding here
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IntrinsicWidth(
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: TextField(
                          readOnly: true,
                          onTap: () => selectToDate(context),
                          decoration: InputDecoration(
                            labelText: "To Date",
                            hintText: toDate != null ? toDate.toString() : "To Date",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.date_range),
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Adjust the vertical padding here
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return ItemDetails();
                      // }));
                    },
                    child: Text(
                      "Load",
                      style: TextStyle(color: Colors.white),
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
                              width: 20,
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
                                  "Date",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Type",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Amt",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Remark",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Balance",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("1"),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("1-1-23"),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("Credit"),
                                      ),
                                    ),Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("80"),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("R-1"),
                                      ),
                                    ), Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("80"),
                                      ),
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

            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Net : 80")
                ],
              ),
            )
          ]),
        ));
  }
}
