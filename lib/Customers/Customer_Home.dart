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
import 'package:integrate_3screens/Customers/Share_screen.dart';
import 'package:integrate_3screens/Customers/Wallet.dart';

import '../Loginscreen.dart';
import '15-19/Order_History.dart';
import '15-19/Order_Status.dart';
import '15-19/Pricing.dart';
import 'NewOrder.dart';
import 'Notifications.dart';

class CustomerHomeScreen extends StatefulWidget {
  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: SafeArea(
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
                  trailing: Icon(Icons.share),
                  title: Text(
                    'Share',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShareScreen()),
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
            SizedBox(height: 50),
             Card(
               elevation: 10,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Card(
                       elevation: 10,
                       child: Row(
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
                                 Card(
                                   elevation: 2,
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30),
                                   ),
                                   child: CircleAvatar(
                                     radius: 30,
                                     backgroundColor: Colors.blue,
                                     child: Icon(
                                       Icons.assignment,
                                       color: Colors.white,
                                       size: 30,
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 10),
                                 Text('Order Status', style: TextStyle(fontWeight: FontWeight.bold)),
                               ],
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
                             child: Column(
                               children: [
                                 Card(
                                   elevation: 2,
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30),
                                   ),
                                   child: CircleAvatar(
                                     radius: 30,
                                     backgroundColor: Colors.orange,
                                     child: Icon(
                                       Icons.add_shopping_cart,
                                       color: Colors.white,
                                       size: 30,
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 10),
                                 Text('New Order', style: TextStyle(fontWeight: FontWeight.bold)),
                               ],
                             ),
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
                                 Card(
                                   elevation: 2,
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30),
                                   ),
                                   child: CircleAvatar(
                                     radius: 30,
                                     backgroundColor: Colors.blue,
                                     child: Icon(
                                       Icons.payment,
                                       color: Colors.white,
                                       size: 30,
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 10),
                                 Text('Our Rates', style: TextStyle(fontWeight: FontWeight.bold)),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 30),
                     Card(
                       elevation: 10,
                       child: Padding(
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
                                   Card(
                                     elevation: 2,
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30),
                                     ),
                                     child: CircleAvatar(
                                       radius: 30,
                                       backgroundColor: Colors.purple,
                                       child: Icon(
                                         Icons.local_offer,
                                         color: Colors.white,
                                         size: 30,
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: 10),
                                   Text('Promotions', style: TextStyle(fontWeight: FontWeight.bold)),
                                 ],
                               ),
                             ),
                             InkWell(
                               onTap: () {
                                 // Handle Services option
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
                                       child: Icon(
                                         Icons.local_laundry_service_outlined,
                                         color: Colors.white,
                                         size: 30,
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: 10),
                                   Text('Services', style: TextStyle(fontWeight: FontWeight.bold)),
                                 ],
                               ),
                             ),
                             InkWell(
                               onTap: () {
                                 // Handle Contact option
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
                                       child: Icon(
                                         Icons.phone,
                                         color: Colors.white,
                                         size: 30,
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: 10),
                                   Text('Contact', style: TextStyle(fontWeight: FontWeight.bold)),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             )
,
              SizedBox(height: 32.0),
            ],
          ),
        ),
        ],
      ),
      ),
      ),
      ),
    );
  }
}
