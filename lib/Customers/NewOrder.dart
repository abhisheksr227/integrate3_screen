import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '15-19/Contactless_Mode.dart';

class CustomerNewOrder extends StatefulWidget {
  const CustomerNewOrder({Key? key}) : super(key: key);

  @override
  State<CustomerNewOrder> createState() => _CustomerNewOrderState();
}

class _CustomerNewOrderState extends State<CustomerNewOrder> {
  String selectedOption = '';
  bool expressSelected = false;
  bool normalSelected = false;
  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.refresh_outlined,
              color: Colors.blue,
            ),
          ),
        ],
        title: Text(
          'New Order',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Available Offers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Radio(
                activeColor: Colors.blue,
                value: 'Normal',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value.toString();
                  });
                },
              ),
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(12),
                child: Text(
                  'Place Order Via Valet and Get 10% Discount',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.lightBlue,
                  value: normalSelected,
                  onChanged: (value) {
                    setState(() {
                      normalSelected = value!;
                    });
                  },
                ),
                Text('Direct Staff'),
                SizedBox(width: 20),
                Checkbox(
                  activeColor: Colors.lightBlue,
                  value: expressSelected,
                  onChanged: (value) {
                    setState(() {
                      expressSelected = value!;
                    });
                  },
                ),
                Text('Contactless'),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Picking Time',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _selectTime(context);
                  },
                  child: Text(
                    selectedTime == null
                        ? 'Select Time'
                        : selectedTime!.format(context),
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            ElevatedButton(
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
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'ORDER NOW',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[800],
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
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
