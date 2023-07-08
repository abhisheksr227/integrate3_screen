import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Pendinglist extends StatefulWidget {
  const Pendinglist({Key? key}) : super(key: key);

  @override
  _PendinglistState createState() => _PendinglistState();
}

class _PendinglistState extends State<Pendinglist> {
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
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Text(
              "Pending List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(height: 50),
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
                                "Order No",
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
                              "Order Type",
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
                              "Staff",
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
                              "Delivery Date",
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

          SizedBox(
            height: 30,
          ),
          // ElevatedButton(onPressed: () {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
          //     return Dispatcheditems();
          //   },));
          // }, child: Text("Next"))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: BottomNavigationBar(
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: 'Complaint',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_rounded),
              label: 'pending',
            ),
          ],
        ),
      ),

    );
  }
}
