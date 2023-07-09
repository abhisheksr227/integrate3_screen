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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                  color: Colors.blue,
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
                      SizedBox(height: 10),
                      Text(
                        'ABHISHEK',
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
                trailing: Icon(Icons.edit),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.language),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.history_sharp),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.shopping_bag),
                title: Text(
                  'Bags',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bag()),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.attach_money),
                title: Text(
                  'Pricing',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pricing()),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.details),
                title: Text(
                  'Item Details',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Itemdetails()),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.history),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.error),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.receipt),
                title: Text(
                  'Receipt',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Receipt()),
                  );
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.lock),
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
              Divider(),
              ListTile(
                trailing: Icon(Icons.description),
                title: Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Handle terms and conditions option
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 16.0),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Orderstushistory(),
                    ),
                  );
                },
                child: HomeCard(
                  title: 'Order Status',
                  icon: Icons.assignment,
                  color: Colors.blue,
                ),
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
                child: HomeCard(
                  title: 'New Order',
                  icon: Icons.add_shopping_cart,
                  color: Colors.orange,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle Payment option
                },
                child: HomeCard(
                  title: 'Payment',
                  icon: Icons.payment,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
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
                child: HomeCard(
                  title: 'Promotions',
                  icon: Icons.local_offer,
                  color: Colors.purple,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle Services option
                },
                child: HomeCard(
                  title: 'Services',
                  icon: Icons.local_laundry_service_outlined,
                  color: Colors.teal,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle Contact option
                },
                child: HomeCard(
                  title: 'Contact',
                  icon: Icons.phone,
                  color: Colors.redAccent,
                ),
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

class HomeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const HomeCard({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color,
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
