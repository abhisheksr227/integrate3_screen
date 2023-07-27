import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Service_staff_dashboard_75.dart';

class ServiceNewOrder extends StatefulWidget {
  const ServiceNewOrder({Key? key}) : super(key: key);

  @override
  State<ServiceNewOrder> createState() => _ServiceNewOrderState();
}

class _ServiceNewOrderState extends State<ServiceNewOrder> {

  String selectedOption = '';
  bool expressSelected = false;
  bool normalSelected = false;
  String Time = 'Select Time';
  List<String> Timerange = ['Select Time','09:00am to 11:00am','11:00am to 01:00pm','01:00pm to 03:00pm',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        title: Center(child: Text("NEW ORDER",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.refresh_outlined,
              color: Colors.deepPurple,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Picking Time',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepPurple)),
              child: DropdownButtonFormField(
                  validator: (d) {
                    if (d!.contains('Select Your Time')) {
                      return 'Select Your Time';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.only(),
                    prefix: SizedBox(
                      width: 10,
                    ),
                    hintText: 'Select Your TIme',
                  ),
                  value: Time,
                  items: Timerange.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                  onChanged: (v) {
                    setState(() {
                      Time = v!;
                    });
                  }),
            ),
            SizedBox(height: 50),
            SizedBox(width: 150,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Order Confirmation'),
                        content: Text('Your order has been confirmed.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StaffServiceDashboard(),),(route) => false);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple[800],
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            SizedBox(height: 100),
            Text(
              'Terms & Conditions',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
