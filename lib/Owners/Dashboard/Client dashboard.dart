import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clientdashboard extends StatefulWidget {
  const Clientdashboard({Key? key}) : super(key: key);

  @override
  _ClientdashboardState createState() => _ClientdashboardState();
}

class _ClientdashboardState extends State<Clientdashboard> {
  int selectedRow = -1;


  Color color = Color(0xff0d2bd4);
  String? selectedOption;
  int allradionutton = 0;

  bool isButtonVisible = false;
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        iconTheme: IconThemeData(color: Colors.blue,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        title: Center(child: Text("CLIENT DASHBOARD",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500))),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[500]),
                              onPressed: () {},
                              child: Text("Add New",style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 10,),
                              Text("Branch"),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                child: DropdownButton<String>(
                                  hint: Text(
                                    "Select",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                  value: selectedOption,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedOption = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Option 1',
                                    'Option 2',
                                    'Option 3',
                                    'Option 4'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Radio<int>(
                                activeColor: Colors.lightBlue,
                                value: 0,
                                groupValue: allradionutton,
                                onChanged: (value) {
                                  setState(() {
                                    allradionutton = value ?? 0;
                                  });
                                },
                              ),
                              SizedBox(width: 10),
                              Text("All"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Total Clients:2500",
                          style: TextStyle(color: Colors.black)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Unassigned:250",
                          style: TextStyle(color: Colors.black)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("New:50", style: TextStyle(color: Colors.black)),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text("Search"),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: "Client Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.blue[500],
                      ),
                      onPressed: () {},
                      child: Text("Edit",style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                "Client Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "Client Id",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "Mob No",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                "Alternate Number",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      "Staff",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      "Outstanding",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none,
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
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                "Email Id",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      "Birthday",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      "GPS",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "UPLOAD",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                "Client Distribution",
                style: TextStyle(fontSize: 20),
              )),
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
                              Expanded(
                                child: Container(
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
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Staff Name",
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
                                  alignment: Alignment.center,
                                  child: Text(
                                    "No of Clients",
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
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: .3,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(
                                parent: FixedExtentScrollPhysics()),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("1"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("2"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("2"),
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
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Total")],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Un Assigned",
                style: TextStyle(fontSize: 20),
              )),
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
                              Expanded(
                                child: Container(
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
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Location",
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
                                  alignment: Alignment.center,
                                  child: Text(
                                    "No of Clients",
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
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Un Assigned",
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
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: .3,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(
                                parent: FixedExtentScrollPhysics()),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("1"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("2"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("2"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("2"),
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
            ]),
      ),
    );
  }
}
