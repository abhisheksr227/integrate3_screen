import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listall_117.dart';

class IndividualItems extends StatefulWidget {
  const IndividualItems({Key? key}) : super(key: key);

  @override
  _IndividualItemsState createState() => _IndividualItemsState();
}

class _IndividualItemsState extends State<IndividualItems> {
  int selectedRow = -1;

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
                "INDIVIDUAL ITEMS",
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
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  child: DropdownButton<String>(
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
                )
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
                      allradionutton = value ?? 0;
                    });
                  },
                ),
                SizedBox(width: 10),
                Text("All"),
                SizedBox(
                  height: 10,
                )
              ],
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
                            Expanded(
                              child: Container(
                                width: 40,
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
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                width: 80,
                                alignment: Alignment.center,
                                child: Text(
                                  "Particular",
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
                                width: 80,
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Count",
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
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("1"),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 80,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("Dryclean"),
                                      ),
                                    ), Expanded(
                                      child: Container(
                                        width: 80,
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("Dryclean"),
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
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListAll();
              },));
            }, child: Text("Next"))
            ,
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.lightBlue,
        child: BottomNavigationBar(
          backgroundColor: Colors.blue[800],
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
