import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Create_invoice_119.dart';

class ListAll extends StatefulWidget {
  const ListAll({Key? key}) : super(key: key);

  @override
  _ListAllState createState() => _ListAllState();
}

class _ListAllState extends State<ListAll> {



  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color color = Color(0xff0d2bd4);
  String? selectedOption;
  int allradionutton = 0;

  bool isButtonVisible = false;
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.10),
        child: AppBar(
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
                SizedBox(height: 10,),
                Text(
                  "LOGO",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),SizedBox(height: 10,),Text(
                  "Welcome Back Deepesh!",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 15
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
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "List All",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Branch"),
                  SizedBox(width: 30),
                  DropdownButton<String>(
                    hint: Text(
                      "Select",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
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
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<int>(
                    activeColor: Colors.lightBlue,
                    value: 0,
                    groupValue: allradionutton,
                    onChanged: (value) {
                      setState(() {
                        allradionutton = value!;
                      });
                    },
                  ),
                  SizedBox(width: 30),
                  Text("All"),
                ],
              ),SizedBox(
                height: 30,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Filter by: '),
                  SizedBox(width: 10,),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(child:Row(
                        children: [
                          Radio(value: 0, groupValue: null, onChanged: null),
                          Text('All'),
                        ],
                      ), value: 0),
                      DropdownMenuItem(child:Row(
                        children: [
                          Radio(value: 1, groupValue: null, onChanged: null),
                          Text('Staff wise'),
                        ],
                      ), value: 1),
                      DropdownMenuItem(child:Row(
                        children: [
                          Radio(value: 2, groupValue: null, onChanged: null),
                          Text('Area wise'),
                        ],
                      ), value: 2),
                      DropdownMenuItem(child:Row(
                        children: [
                          Radio(value: 3, groupValue: null, onChanged: null),
                          Text('Active'),
                        ],
                      ), value: 3),
                      DropdownMenuItem(child:Row(
                        children: [
                          Radio(value: 4, groupValue: null, onChanged: null),
                          Text('Inaactive'),
                        ],
                      ), value: 4),


                    ],
                    onChanged: (value) {
                      // Handle dropdown value change
                    },
                    value: null,
                  ),
                  SizedBox(width: 30.0),
                  // ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200]),
                  //     onPressed: () {
                  //       // Handle search button click
                  //     },
                  //     child: Icon(Icons.search,color: Colors.blue,)
                  // ),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
                      onPressed: () {
                        // Handle search button click
                      },
                      child: Text("Load")
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ), Padding(
                padding: const EdgeInsets.only(left:20),
                child: Row(
                  children: [
                    Text("Search results",style: TextStyle(color: Colors.blue[800],fontSize: 20)),
                  ],
                ),
              ),SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: SizedBox(height: 130,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Sl.No",
                                      style: TextStyle(
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
                                      "Client Name",
                                      style: TextStyle(
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
                                      "Area",
                                      style: TextStyle(
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
                                      "Staff",
                                      style: TextStyle(
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
                                      "Status",
                                      style: TextStyle(
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
                            color: Colors.lightBlue,
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1, // Replace with actual item count
                              itemBuilder: (BuildContext context, int rowIndex) {
                                return SizedBox(
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            " ",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Active/Inactive",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
Row(mainAxisAlignment: MainAxisAlignment.end,
  children: [
    SizedBox(height: 30,
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            // Handle search button click
          },
          child: Text("View")
      ),
    ),SizedBox(width: 10,)
    , SizedBox(height: 30,
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            // Handle search button click
          },
          child: Text("Edit")
      ),
    ),SizedBox(width: 10,), SizedBox(
      height: 30,

      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            // Handle search button click
          },
          child: Text("Delete")
      ),
    ),SizedBox(width: 20,),

  ],
),SizedBox(height: 20,),ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateInvoice();
                },));
              }, child: Text("Next"))
            ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.lightBlue,
        child: BottomNavigationBar(
          backgroundColor: Colors.blue[700],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: 'Track',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_rounded),
              label: 'Complaint',
            ),
          ],
        ),
      ),
    );
  }
}
