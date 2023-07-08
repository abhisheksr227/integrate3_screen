import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Bags_Master_124.dart';

class OutStanding extends StatefulWidget {
  const OutStanding({Key? key}) : super(key: key);

  @override
  _OutStandingState createState() => _OutStandingState();
}

class _OutStandingState extends State<OutStanding> {

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int selectedRow = -1;
  int _selectedIndex = 0;
  Color color = Color(0xff0d2bd4);
  String? selectedOption;
  int allradionutton = 0;
  bool isButtonVisible = false;
  int selectedRowIndex = -1;
  final ScrollController _horizontal = ScrollController();

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
          children: [SizedBox(
            height: 20,
          ),
            Center(
              child: Text(
                "OUTSTANDING",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
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
            ),
            SizedBox(height: screenHeight * 0.02),
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
                            Expanded(
                              child: Container(
                                height: 40,
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
                            Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Total outstanding",
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
                                      width: 40,
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
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Total")
                ],
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BagsMaster();
              },));
            }, child: Text("Next"))
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
