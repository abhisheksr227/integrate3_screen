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

import '15-19/Order_Status_history.dart';
import '15-19/Pricing.dart';
import 'NewOrder.dart';
import 'Notifications.dart';

class CustomerHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications(),));
            }, icon: Icon(Icons.notifications))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(

                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text('Language'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Language(),));
                },
              ),
              ListTile(
                title: Text('Bags'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bag(),));
                },
              ),
              ListTile(
                title: Text('Pricing'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pricing(),));
                },
              ),
              ListTile(
                title: Text('Item Details'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Itemdetails(),));
                },
              ),
              ListTile(
                title: Text('History'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Transactionhistory(),));
                },
              ),
              ListTile(
                title: Text('Customer Complaint'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Complaint(),));
                },
              ),
              ListTile(
                title: Text('Receipt'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Receipt(),));
                },
              ),
              ListTile(
                title: Text('Change Password'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Password(),));
                },
              ),
              ListTile(
                title: Text('Terms and Conditions'),
                onTap: () {
                  // Handle terms and conditions option
                },
              ),
              ListTile(
                title: Text('Sign Out'),
                onTap: () {
                  // Handle sign out option
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'UserName',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ), SizedBox(
                                height: 10,
                              ),GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Edit(),));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 80,
                                  height: 20,
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(width: 16.0),
                          CircleAvatar(
                            radius: 40,
                            // backgroundImage:
                            // NetworkImage('https://example.com/user_image.jpg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Wallet(),));
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Wallet Balance',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  'AED 0',
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
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice(),));
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  'AED 0',
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
                    SizedBox(height: 32.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Orderstushistory(),));
                        },
                          child: CircleContainer(
                            title: 'Order Status',
                            icon: Icons.assignment,
                            color: Colors.blue,
                          ),
                        ),
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerNewOrder(),));
                        },
                          child: CircleContainer(
                            title: 'New Order',
                            icon: Icons.add_shopping_cart,
                            color: Colors.orange,
                          ),
                        ),
                        CircleContainer(
                          title: 'Payment',
                          icon: Icons.payment,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Promotions(),));
                        },
                          child: CircleContainer(
                            title: 'Promotions',
                            icon: Icons.local_offer,
                            color: Colors.purple,
                          ),
                        ),
                        CircleContainer(
                          title: 'Services',
                          icon: Icons.build,
                          color: Colors.teal,
                        ),
                        CircleContainer(
                          title: 'Contact',
                          icon: Icons.phone,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                    SizedBox(height: 32.0),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const CircleContainer({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue[900],
          child: Icon(
            icon,
            size: 32,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
