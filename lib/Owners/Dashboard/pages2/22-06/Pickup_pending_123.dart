import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pickup_Pending_Home_122.dart';

class PickUpPending extends StatefulWidget {
  const PickUpPending({Key? key}) : super(key: key);

  @override
  _PickUpPendingState createState() => _PickUpPendingState();
}

class _PickUpPendingState extends State<PickUpPending> {
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
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,)
,            Center(
              child: Text(
                "Pickup Pending",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                    SizedBox(width: screenWidth * 0.01),
                    Text("All"),
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
                    SizedBox(width: screenWidth * 0.01),
                    Text("Staff Value"),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              width: screenWidth * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  ),
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            SizedBox(
              height: screenHeight * 0.4,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    child: Container(
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(height: screenHeight * 0.02),
                                Text("Order No:"),
                                SizedBox(width: screenWidth * 0.2),
                                Text("Time:"),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text("Client Name:"),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              children: [
                                SizedBox(height: screenHeight * 0.02),
                                Text("Building Name:"),
                                SizedBox(width: screenWidth * 0.15),
                                Text("House No:"),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Row(
                              children: [
                                Text("Area:"),
                                SizedBox(width: screenWidth * 0.25),
                                Text("Locality:"),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Text("Staff Assigned:"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: screenWidth * 0.04, top: screenHeight * 0.02),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue[500],
                                    ),
                                    onPressed: () {},
                                    child: Text("Remind",style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // ElevatedButton(onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return PickupPending();
            //   },));
            // }, child: Text("Next"))
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
              icon: Icon(Icons.notifications_outlined),
              label: 'Complaint',
            ),
          ],
        ),
      ),
    );
  }
}
