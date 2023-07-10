import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewComplaint extends StatefulWidget {
  const NewComplaint({Key? key}) : super(key: key);

  @override
  State<NewComplaint> createState() => _NewComplaintState();
}

class _NewComplaintState extends State<NewComplaint> {

  int selectedRowIndex = -1;

  void selectRow(int index) {
    setState(() {
      selectedRowIndex = index;
    });
  }

  String Complaint = 'Select';
  List<String> elements = ['Select','Item Missing','Damaged','Not Pressed properly','Dirty','Poorly Packed','Wrinkled Clothes'];


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
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  'NEW COMPLAINT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(elevation: 5,
                color: Colors.white,
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
                                  Container(
                                    width: 60,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sl. No",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                    width: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Order. No",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Order",
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
                                            "No. Of Items",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Date",
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
                                                      Container(
                                                        width: 60,
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                      Container(
                                                        width: 40,
                                                          alignment:
                                                          Alignment.center,
                                                          child: Text(
                                                            "102",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
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
                                                                "delivered",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
                                                      Expanded(
                                                          child: Container(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Text(
                                                                "5",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ))),
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
                                                    ]));
                                              }),
                                        ));
                                  }),
                            ),
                          ]);
                        })),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('Complaint Type'),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue)),
                    child: DropdownButtonFormField(
                      validator: (d) {
                        if (d!.contains('Select')) {
                          return 'Select';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                      ), value: Complaint,
                        items: elements.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                        onChanged: (v) {
                          setState(() {
                            Complaint = v!;
                          });
                        }
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Remarks'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                onPressed: () { },
                child: Text('SAVE',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
