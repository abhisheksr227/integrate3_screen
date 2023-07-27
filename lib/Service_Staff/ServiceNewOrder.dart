import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Service_staff_dashboard_75.dart';

class ServiceNewOrder extends StatefulWidget {
  const ServiceNewOrder({Key? key}) : super(key: key);
  @override
  State<ServiceNewOrder> createState() => _ServiceNewOrderState();
}
class _ServiceNewOrderState extends State<ServiceNewOrder> {

  String? selectedStaff;
  String? selectedMode;

  List<String> staffNames = ['Staff 1', 'Staff 2', 'Staff 3'];
  List<String> modeOptions = ['Urgent', 'Normal', 'Express'];


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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(hintText: "Mobile Number/Customer ID",
                    contentPadding: EdgeInsets.all(10),
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
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(child: Text("Select Staff")),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.deepPurple)),
                      child: DropdownButtonFormField<String>(
                        value: selectedStaff,
                        onChanged: (newValue) {
                          setState(() {
                            selectedStaff = newValue;
                          });
                        },
                        items: staffNames.map((staffName) {
                          return DropdownMenuItem<String>(
                            value: staffName,
                            child: Text(staffName),
                          );
                        }).toList(),
                        hint: Text(staffNames[0]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(child: Text("Mode")),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.deepPurple)),
                      child: DropdownButtonFormField<String>(
                        value: selectedMode,
                        onChanged: (newValue) {
                          setState(() {
                            selectedMode = newValue;
                          });
                        },
                        items: modeOptions.map((mode) {
                          return DropdownMenuItem<String>(
                            value: mode,
                            child: Text(mode),
                          );
                        }).toList(),
                        hint: Text(modeOptions[0]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Text(
                    'Picking Time',
                    style: TextStyle(
                    ),
                  ),SizedBox(width: 30,),
                  Expanded(
                    child: Container(
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
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
              width: 100,
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
                  'Save',
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
          ],
        ),
      ),
    );
  }
}
