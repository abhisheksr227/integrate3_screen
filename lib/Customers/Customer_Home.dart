import 'package:flutter/material.dart';
import 'package:integrate_3screens/Customers/15-19/Item_Details.dart';
import 'package:integrate_3screens/Customers/15-19/Transaction_History.dart';
import 'package:integrate_3screens/Customers/Bag.dart';
import 'package:integrate_3screens/Customers/Complaint.dart';
import 'package:integrate_3screens/Customers/Edit.dart';
import 'package:integrate_3screens/Customers/Invoice.dart';
import 'package:integrate_3screens/Customers/Language.dart';
import 'package:integrate_3screens/Customers/Password.dart';
import 'package:integrate_3screens/Customers/Promotions.dart';
import 'package:integrate_3screens/Customers/Receipt.dart';
import 'package:integrate_3screens/Customers/Wallet.dart';

import '../Loginscreen.dart';
import '../Picker_App/src/colors.dart';
import '../Picker_App/src/dimen.dart';
import '15-19/Order_History.dart';
import '15-19/Order_Status.dart';
import '15-19/Pricing.dart';
import 'NewOrder.dart';
import 'Notifications.dart';

class CustomerHomeScreen extends StatelessWidget {
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mobiz Laundry",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications(),
                  ),
                );
              },
              icon: Icon(Icons.notifications),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwaH1Wvbjn0K9LrL7_WyAfPW85Kl9fUu-mpw&usqp=CAU'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'ABHISHEK - PERSONAL',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.edit, color: Colors.blue),
                title: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Edit()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.language, color: Colors.blue),
                title: Text(
                  'Language',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Language()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.history_sharp, color: Colors.blue),
                title: Text(
                  'Order History',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Orderhistory()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.history, color: Colors.blue),
                title: Text(
                  'Transaction History',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transactionhistory(),
                    ),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.error, color: Colors.blue),
                title: Text(
                  'Customer Complaint',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Complaint()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.share, color: Colors.blue),
                title: Text(
                  'Share',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Receipt()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Password()),
                  );
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(
                  Icons.description,
                  color: Colors.blue,
                ),
                title: Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Handle terms and conditions option
                },
              ),
              Divider(thickness: 1),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.blue,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Wallet(),
                            //   ),
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF48a3c2), Color(0xFF1A344F)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Wallet Balance',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                   Row(
                                     children: [

                                       ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: () => (), child: Text("Top Up",style: TextStyle(color: Colors.white),)),
                                      SizedBox(width: 20,), Icon(
                                         Icons.add_card_outlined,
                                         color: Colors.white,
                                       ),
                                     ],
                                   )
                                  ],
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  'AED 80',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Invoice(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF48a3c2), Color(0xFF1A344F)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Current Outstanding',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.warning,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  'AED 20',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Orderstushistory(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.blue[900],
                                      child: Icon(
                                        Icons.assignment,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Order Status',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CustomerNewOrder(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.blue,
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('New Order',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Pricing(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.payment,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Our Rates',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Promotions(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.orange,
                                        child: Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Promotions',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    // Handle Services option
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.teal,
                                        child: Icon(
                                          Icons.local_laundry_service_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Services',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    // Handle Contact option
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.pink,
                                        child: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text('Contact',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 200,
                    child: Image.asset(
                      'Assets/Images/customer_homescreen.png',fit: BoxFit.fill,
                      height: 30,
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(right:10),
                    child: InkWell(onTap: () => showRewardDialog(context),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(backgroundImage: AssetImage("Assets/Images/customer_homescreen_reward.jpg"),radius: 20,child: CircleAvatar(backgroundColor: Colors.transparent,radius: 10,child: Text("50"),)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),SizedBox(
                height: 20,
              ),Text("Powered By Mobiz ",style: TextStyle(fontSize: 10,color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}
void showRewardDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Reward Points'),
        content: Text('You have 50 points.'),
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
