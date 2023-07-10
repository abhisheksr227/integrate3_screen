import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '15-19/Contactless_Mode.dart';

class CustomerNewOrder extends StatefulWidget {
  const CustomerNewOrder({Key? key}) : super(key: key);

  @override
  State<CustomerNewOrder> createState() => _CustomerNewOrderState();
}

class _CustomerNewOrderState extends State<CustomerNewOrder> {
  String Complaint = 'Select';
  List<String> elements = ['9:00 am to 11:00 am','11:00 am to 01:00 pm','01:00 pm to 03:00 pm'];
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Center(
              child: Text(
                'Available Offers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Picking Time',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue)),
                  child: DropdownButtonFormField(
                      validator: (d) {
                        if (d!.contains('Select')) {
                          return 'Select';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 10),
                        prefix: SizedBox(
                          width: 10,
                        ),
                        hintText: 'Select',
                      ), value: Complaint,
                      items: elements.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                      onChanged: (v) {
                        setState(() {
                          Complaint = v!;
                        });
                      }
                  ),
                ),
              ],
            ),
            SizedBox(height: 120),
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
