import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'New_complaint.dart';

class Complaint extends StatefulWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  int selectedRowIndex = -1;

  void selectRow(int index) {
    setState(() {
      selectedRowIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.blue),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.refresh_outlined,
                  color: Colors.blue,
                )),
          )
        ],
        title: Center(
            child: Column(
              children: const [
                Text('LOGO', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),),
                Text('Welcome Back Deepesh !',
                  style: TextStyle(fontSize: 18, color: Colors.blue),)
              ],
            )),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'COMPLAINT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewComplaint(),));
                },
                child: Text('NEW',style: TextStyle(color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: 1,
                        padding: EdgeInsets.zero,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(children: [
                            SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: Row(children: [
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Date",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Com. No",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Type",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Status",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Remark",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                ])),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Colors.blue,
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const ClampingScrollPhysics(),
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context, int rowIndex) {
                                    return SizedBox(
                                        height: 40,
                                        width: MediaQuery.of(context).size.width,
                                        child: GestureDetector(
                                          onTap: () {
                                            selectRow(rowIndex);
                                          },
                                          child: ListView.builder(
                                              itemCount: 1,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                    height: 40,
                                                    width: MediaQuery.of(context).size.width,
                                                    color: selectedRowIndex == rowIndex ? Colors.grey : null,
                                                    child: Row(children: [
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment.center,
                                                              child: Text(
                                                                "1-2-2023",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment.center,
                                                              child: Text(
                                                                "102",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment.center,
                                                              child: Text(
                                                                "Normal",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment.center,
                                                              child: Text(
                                                                "Pending",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment.center,
                                                              child: Text(
                                                                "",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                    ]));
                                              }),
                                        ));
                                  }),
                            )
                          ]);
                        })),
              ),
            ),
            Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(CupertinoIcons.chevron_down,color: Colors.blue[900],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Icon(CupertinoIcons.chevron_down,color: Colors.blue),
                  )
                ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 15),
                        child: Text('Complaint No : ',style: TextStyle(fontSize: 16),),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 15),
                    child: Text('Complaint Date : ',style: TextStyle(fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 15),
                    child: Text('Order No : ',style: TextStyle(fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 15),
                    child: Text('Complaint Type : ',style: TextStyle(fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 30),
                    child: Text('Status : Resolved/Pending',style: TextStyle(fontSize: 16)),
                  ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 10),
                  child: Text('Reply from Company',style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'My Remark',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                      onPressed: () {},
                      child: Text('REPLY',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                      onPressed: () {},
                      child: Text('BACK',style: TextStyle(color: Colors.white),),
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
