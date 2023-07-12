import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Loginscreen.dart';
import 'Dispatched_items.dart';
import 'Issue_Invoice.dart';
import 'Language84.dart';
import 'Order_status.dart';
import 'Pending_list.dart';
import 'ReadyForDelivery.dart';
import 'Report83.dart';
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) => LoginPage()
                ),(route) => false
                );
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
      builder: (context) => AlertDialog(actionsAlignment: MainAxisAlignment.center,
        title: Center(child: Text('Exit App !',style: TextStyle(color: Colors.pinkAccent[400]),)),
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
        actions:[
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No',style: TextStyle(color: Colors.green[700]),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Yes',style: TextStyle(color: Colors.pinkAccent[400]),),
            ),
          ),
        ],
      ),
    )??false;
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ComplaintScreen()),
        // );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pendinglist()),
        );
        break;
    }
  }

  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: Padding(
        //   padding: const EdgeInsets.only(bottom: 55),
        //   child: IconButton(onPressed: () {},
        //     icon: const Icon(Icons.menu,color: Colors.deepPurple),),
        // ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(bottom: 55),
        //     child: IconButton(onPressed: () {},
        //         icon: const Icon(Icons.refresh_outlined,color: Colors.deepPurple,)),
        //   )
        // ],
        // toolbarHeight: 110,
        backgroundColor: Colors.white,
        toolbarHeight: 50,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: CircleAvatar(
                  foregroundImage: AssetImage('Assets/Images/logo.jpg'),
                )
            ),
            ListTile(
              leading: Icon(Icons.login,color: Colors.deepPurple,size: 20,),
              title: Text(' Service Login',style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewOrderDetails()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fire_truck,color: Colors.deepPurple,size: 20,),
              title: Text('Dispatched',style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dispatcheditems()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.language,color: Colors.deepPurple,size: 20,),
              title: Text('Language',style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Language()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.restore_page_rounded,color: Colors.deepPurple,size: 20,),
              title: Text('Reports',style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RevenueReport()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.deepPurple,size: 20,),
              title: Text('Logout',style: TextStyle(color: Colors.deepPurple,fontSize: 15)),
              onTap: () {
                showLogoutConfirmationDialog(context);
              },
            ),
          ],
        ),
      ),
     body:
      SingleChildScrollView(
        child: Column(
          children: [
            const Text('Service Staff Dashboard',
              style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
            SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text('Order Summary', style: TextStyle(fontSize: 14,),),
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        child: Text('350', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      ),
                      Text('PENDING',
                        style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepPurple,
                      child: Text('100',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    ),
                    Text('NEW',style: TextStyle(fontSize: 12),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        child: Text('250',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      ),
                      Text('COMPLETED',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => IssueInvoice(),));
                     },
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple
                      ),
                      child: const Center(child: Text('Generate Invoice',
                        style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Orderstatus(),));
                    },
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple
                      ),
                      child: const Center(
                          child: Text('Order Status',
                            style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child:
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceLogin(),));
                 },
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple
                  ),
                  child: const Center(
                      child: Text('Engage',
                        style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Order Type',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold))),
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
                        height: 100,
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Normal')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Abdu')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('100')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('50')),
                                    ),
                                  ),
                                ],
                              );
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 15,left: 20),
                  child: Text('(If Engage is Clicked)',style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
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
                            child: Center(child: Text('Sl.No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Order No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Staff',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Delivery Time',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 40,
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
                        height: 100,
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('1')),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                        child: Text('108')),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                        child: Text('Abdu')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Today 4 : 00 pm')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                      child:  InkWell(onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReadyForDelivery(),));
                                      },
                                        child: Container(
                                          height: 20,
                                          width: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepPurple),
                                          child: const Center(child: Text('Engage',style: TextStyle(color: Colors.white,fontSize: 10),)),
                                        ),
                                      ),),
                                  ),
                                ],
                              );
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(top: 10,bottom: 8),
              child: Text('Category Wise Orders',
                style: TextStyle(fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
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
                            child: Center(child: Text('Sl.No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Catagory',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Text('New',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold))),
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
                        height: 130,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('1')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Dry Clean')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('50')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('100')),
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
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),bottomNavigationBar: Container(
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