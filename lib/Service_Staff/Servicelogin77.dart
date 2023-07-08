import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ViewOrderDetails extends StatefulWidget {
  const ViewOrderDetails({Key? key}) : super(key: key);

  @override
  _ViewOrderDetailsState createState() => _ViewOrderDetailsState();
}

class _ViewOrderDetailsState extends State<ViewOrderDetails> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.deepPurple[800],
          size: 30,
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGO",
                style: TextStyle(
                  color: Colors.deepPurple[800],
                  fontWeight: FontWeight.bold,
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
                color: Colors.deepPurple[800],
              ),
              SizedBox(width: 10,)
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text(
                "Service Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Order N.o"),
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white, // You can set your desired background color
                      borderRadius: BorderRadius.all(Radius.circular(0)), // Set the border radius to 0 for a rectangle
                      border: Border.all(
                        color: Colors.deepPurple, // You can set your desired border color
                        width: 1, // You can set your desired border width
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the border from the TextField
                        // Add any additional decoration properties you may need
                      ),
                    ),
                  ) ,

                  Text("Order Type") ,// Optional spacing between text fields
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white, // You can set your desired background color
                      borderRadius: BorderRadius.all(Radius.circular(0)), // Set the border radius to 0 for a rectangle
                      border: Border.all(
                        color: Colors.deepPurple, // You can set your desired border color
                        width: 1, // You can set your desired border width
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // Remove the border from the TextField
                        // Add any additional decoration properties you may need
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Staff: Noor "),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Details"),
                      SizedBox(height: 10,),
                      Text("Date: 13-04-2022"),
                      SizedBox(height: 10,),
                      Text("Time: 10:00 am"),
                    ],
                  ),
                ],
              )

            ),
            SizedBox(height: 30),
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
                                  "Category",
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
                                "Type",
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
                                "Qty",
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
                                      width: 60,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("1"),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text("2"),
                                      ),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("2"),
                                    ),
                                    Container(
                                      width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text("2"),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple, width: 1),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Button onPressed action
                    },
                    child: Text("Engage Now",style: TextStyle(fontSize: 10,color: Colors.black)), // You can replace null with an icon or any other widget
                  ),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),SizedBox(
              height: 40,
            ),
            // ElevatedButton(onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return NewOrder();
            //   },));
            // }, child: Text("Next"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Complaint',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'pending',
          ),
        ],
      ),
    );
  }
}
