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
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.20,
                                width: MediaQuery.of(context).size.width*2,
                                child: ListView.builder(
                                  itemCount: 1,
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  physics: const ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          width: MediaQuery.of(context).size.width*2,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 40,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Sl No",
                                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Order N.o",
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "No of Items",
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Order Type",
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Status",
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Date",
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.10,
                                          width: MediaQuery.of(context).size.width*2,
                                          child: ListView.separated(
                                            separatorBuilder: (context, index) {
                                              return  Divider(
                                                color: Colors.grey,
                                                thickness: .3,
                                                indent: 10,
                                                endIndent: 10,
                                              );
                                            },
                                            padding: EdgeInsets.zero,
                                            physics: const ClampingScrollPhysics(),
                                            itemCount: 1,
                                            itemBuilder: (BuildContext context, int rowIndex) {

                                              return SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context).size.width*2,
                                                child: ListView.builder(
                                                  itemCount: 1,
                                                  scrollDirection: Axis.horizontal,
                                                  itemBuilder: (context, index) {
                                                    return Container(
                                                      height: 40,
                                                      width: MediaQuery.of(context).size.width*2,
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            width: 40,
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "1",
                                                              style: TextStyle(color: Colors.black),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              child: Text(
                                                                "1002",
                                                                style: TextStyle(color: Colors.black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              child: Text(
                                                                "3",
                                                                style: TextStyle(color: Colors.black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              child: Text(
                                                                "Normal",
                                                                style: TextStyle(color: Colors.black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              child: Text(
                                                                "Damaged",
                                                                style: TextStyle(color: Colors.black),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              child: Text(
                                                                "Damaged",
                                                                style: TextStyle(color: Colors.black),
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
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
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
