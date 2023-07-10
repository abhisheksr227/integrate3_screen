import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Over_dues_300.dart';

class AgeingReport extends StatefulWidget {
  const AgeingReport({Key? key}) : super(key: key);

  @override
  _AgeingReportState createState() => _AgeingReportState();
}

class _AgeingReportState extends State<AgeingReport> {
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

  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 20),
                                Text("Shop Name",
                                    style:
                                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                SizedBox(width: 20),
                                Text("AED",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(height: 20),
                                Text("No of Invoice:10"),
                                SizedBox(width: 15),
                                Text("Amt:715"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text("Order due:3:"),
                                SizedBox(width: 20),
                                Text("Amt:715"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }



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
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Ageing Report",
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              width: screenWidth * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  ),
                  hintText: 'Customer Name/Mob No',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            SizedBox(
              height: screenHeight * 0.35,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: _showPopup,
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Card(
                        elevation: 10,
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
                                    Text("Shop Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                    SizedBox(width: screenWidth * 0.2),
                                    Text("AED",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  children: [
                                    SizedBox(height: screenHeight * 0.02),
                                    Text("No of Invoice:10"),
                                    SizedBox(width: screenWidth * 0.15),
                                    Text("Amt:715"),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.02),
                                Row(
                                  children: [
                                    Text("Order due:3:"),
                                    SizedBox(width: screenWidth * 0.22),
                                    Text("Amt:715"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.03),
              child: Card(
                elevation: 10,
                child: Container(
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.lightBlue)),
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.02),
                        Text("Total No of pending",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            SizedBox(height: screenHeight * 0.02),
                            Text("Invoices:2100"),
                            SizedBox(width: screenWidth * 0.19),
                            Text("Amt:7150"),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            Text("Order due:3:"),
                            SizedBox(width: screenWidth * 0.22),
                            Text("Amt:715"),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Text("No of Customers:210"),
                      ],
                    ),
                  ),
                ),
              ),
            ),ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OverDues();
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
