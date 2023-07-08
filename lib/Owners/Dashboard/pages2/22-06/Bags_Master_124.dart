import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Bags_125.dart';

class BagsMaster extends StatefulWidget {
  const BagsMaster({Key? key}) : super(key: key);

  @override
  _BagsMasterState createState() => _BagsMasterState();
}

class _BagsMasterState extends State<BagsMaster> {


  int selectedRow = -1;
  String? selectedOption;
  int allradionutton = 0;
  bool isButtonVisible = false;
  int selectedRowIndex = -1;


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

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
                "Bags Master",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Branch"),
                SizedBox(width: screenWidth * 0.04),
                Container(
                  height: screenHeight * 0.07,
                  child: DropdownButton<String>(
                    hint: Text(
                      "Select",
                      style: TextStyle(fontSize: screenWidth * 0.02, color: Colors.grey),
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
                      allradionutton = value ?? 0;
                    });
                  },
                ),
                SizedBox(width: screenWidth * 0.02),
                Text("All"),
              ],
            ),SizedBox(
              height: 20,
            ),
      Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),color: CupertinoColors.systemGrey6,child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text("Select Category"),
      )),
SizedBox(
  height: 20,
),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bag Colour"),SizedBox(
            width: 20,
          ),
          Container(
            height: screenHeight * 0.04,
            width: screenWidth * 0.35,
            decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue)),
          ),
        ],
      ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rate"),SizedBox(
                  width: 60,
                ),
                Container(
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.35,
                  decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                ),
              ],
            ),


            SizedBox(height: screenHeight * 0.03),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700],),onPressed: () {

            }, child: Text("Save")),
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
                                  "Colour",
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
                                "Category",
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
                                "Rate",
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
                        height: 100,
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
                                      child: Text(""),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(""),
                                      ),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(""),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(""),
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
                return Bags();
              },));
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}