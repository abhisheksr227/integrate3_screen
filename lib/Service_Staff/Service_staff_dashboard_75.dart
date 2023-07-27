import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integrate_3screens/Service_Staff/Completed_Screen.dart';
import 'package:integrate_3screens/Service_Staff/InProcessed_Screen.dart';
import 'package:integrate_3screens/Service_Staff/ServiceComplaint.dart';
import 'package:integrate_3screens/Service_Staff/ServiceNewOrder_Screen.dart';
import 'package:integrate_3screens/Service_Staff/ServiceNotifications.dart';
import 'package:integrate_3screens/Service_Staff/ServicePending_screen.dart';
import 'package:integrate_3screens/Service_Staff/ServiceUndelivered_Screen.dart';
import '../Loginscreen.dart';
import 'Dispatched_items.dart';
import 'Language84.dart';
import 'Order_status.dart';
import 'ReadyForDeliver_Screen.dart';
import 'ReadyForDelivery.dart';
import 'Report83.dart';
import 'Reprint_invoice.dart';
import 'ServiceItem_Details.dart';
import 'ServiceNewOrder.dart';
import 'Service_add_clients.dart';
import 'Service_login.dart';
import 'Servicelogin77.dart';

class StaffServiceDashboard extends StatefulWidget {
  const StaffServiceDashboard({Key? key}) : super(key: key);

  @override
  State<StaffServiceDashboard> createState() => _StaffServiceDashboardState();
}

class _StaffServiceDashboardState extends State<StaffServiceDashboard> {
  Future<void> showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Logout'),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> showItemDetails(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Item Details'),
          content: ServiceItemdetails(),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Center(
                child: Text(
              'Exit App !',
              style: TextStyle(color: Colors.pinkAccent[400]),
            )),
            content: SizedBox(
                height: 50,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const Text('Do you Really Want to'),
                        const Text('Close the App ?')
                      ],
                    ),
                  ),
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text(
                    'No',
                    style: TextStyle(color: Colors.green[700]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Colors.pinkAccent[400]),
                  ),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomeScreen()),
        // );
        break;
      case 1:
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => ServiceComplaint()),
         );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServiceNotifications()),
        );
        break;
    }
  }

  int _selectedIndex = 0;

  int selectedRowIndex = -1;

  void selectRow(int index) {
    setState(() {
      selectedRowIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.deepPurple, size: 30),
          elevation: 0,
          backgroundColor: CupertinoColors.white,
          title: Center(
              child: Text("Service Staff Dashboard",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ))),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.refresh_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: CircleAvatar(
                foregroundImage: AssetImage('Assets/Images/logo.jpg'),
              )),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                title: Text(' Service Login',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewOrderDetails()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.fire_truck,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                title: Text('Dispatched',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dispatcheditems()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                title: Text('Language',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.restore_page_rounded,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                title: Text('Reports',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RevenueReport()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                title: Text('Logout',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15)),
                onTap: () {
                  showLogoutConfirmationDialog(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Order Summary',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServicePendingScreen(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue,
                                  child: Text(
                                    "80",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Pending',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceNewOrderScreen(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.orange,
                                  child: Text(
                                    "50",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'New Orders',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InprocessedScreen(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.indigo,
                                  child: Text(
                                    "60",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'In Process',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CompletedScreen(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.purple,
                                      child: Text(
                                        "50",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Completed',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ServiceReadyForDeliver(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.teal,
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Ready for Delivery',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceUndeliveredScreen(),));
                              },
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.redAccent,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Undelivered',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>ServiceNewOrder(),)), child: Text("New Order",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)),
                 ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>Orderstatus(), )),child: Text("Order Status",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple))
               ],
             ),
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>ServiceAddClients(),)), child: Text("Add Client",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)),
                  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Reprint_invoice(),)), child: Text("Reprint Invoice",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)),
                ],
              ),

              Padding(
               padding: const EdgeInsets.only(top:30,bottom: 10),
               child: Container(
                  height: MediaQuery.of(context).size.height / 25,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10,bottom: 16),
                      border: InputBorder.none,
                      suffixIcon: Container(decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                          child: Icon(Icons.search,)),
                    ),
                  ),
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width + 200,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width + 200,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Center(
                                              child: Text('J.No',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          child: Center(
                                              child: Text('Order No',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                          child: Center(
                                              child: Text('Customer Name',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          child: Center(
                                              child: Text('Staff Name',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                          child: Center(
                                              child: Text('Delivery Time',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: SizedBox(),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      height: 0.5,
                                      width: MediaQuery.of(context).size.width + 200,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                  // Add the ListView inside a SizedBox with a specific height
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.4,
                                    child: ListView.builder(
                                      itemCount: 20,
                                      itemBuilder: (context, index) {
                                        Color rowColor;
                                        if (index % 3 == 0) {
                                          // Set the color of every third row to orange
                                          rowColor = Colors.orange;
                                        } else if (index % 3 == 1) {
                                          // Set the color of every third row to yellow
                                          rowColor = Colors.yellow;
                                        } else {
                                          // Set the color of every third row to white
                                          rowColor = Colors.white;
                                        }

                                        return Container(
                                          color: rowColor, // Apply the color to the row container
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  child: Center(
                                                    child: Text("1"),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: SizedBox(
                                                  child: Center(
                                                    child: Text("1678"),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: SizedBox(
                                                  child: Center(
                                                    child: Text("Abu"),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Expanded(
                                                flex: 2,
                                                child: SizedBox(
                                                  child: Center(
                                                    child: Text("Noor"),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: SizedBox(
                                                  height: 40,
                                                  child: Center(
                                                    child: Text("5:00pm"),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Center(
                                                    child: ElevatedButton(onPressed: () {

                                                    },child:Text("Engage",style: TextStyle(color: Colors.white)) ,style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),)
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Text(
                  'Category Wise Orders',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  surfaceTintColor: Colors.white,
                  elevation: 2,
                  color: Colors.white,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 50,
                              child: Center(
                                  child: Text('Sl.No',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                    child: Text('Catagory',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 50,
                              child: Center(
                                  child: Text('New',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                    child: Text('Pending',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: Center(
                                    child: Text('Completed',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              height: 0.5,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(child: Text('1')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(child: Text('Dry Clean')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(child: Text('50')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(child: Text('100')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(child: Text('50')),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                icon: Icon(Icons.report_problem),
                label: 'Complaint',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notification_important_rounded),
                label: 'notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
