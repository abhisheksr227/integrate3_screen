import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'ReadyForDelivery.dart';

class CompletedScreen extends StatefulWidget {

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  final List<String> timeList = [
    '10:00 AM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
    '9:00 PM',
    '8:00 AM',
    '11:00 PM',
    '11:00 AM',
    '4:00 PM',
    '7:00 PM',
    '9:00 PM',
    '1:00 PM',
    '6:00 AM'
  ];

  // Function to get the current time as TimeOfDay object.
  TimeOfDay getCurrentTime() {
    final now = DateTime.now();
    return TimeOfDay.fromDateTime(now);
  }

  // Function to parse delivery time as TimeOfDay object.
  TimeOfDay parseDeliveryTime(String deliveryTime) {
    final time = DateFormat('hh:mm a').parse(deliveryTime);
    return TimeOfDay(hour: time.hour, minute: time.minute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        title: Center(child: Text("COMPLETED",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:40),
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
                                      flex: 2,
                                      child: SizedBox(
                                        child: Center(
                                            child: Text('Order Type',
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
                                      flex: 2,
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
                                  height: MediaQuery.of(context).size.height*0.7,
                                  child: ListView.builder(
                                    itemCount: timeList.length,
                                    itemBuilder: (context, index) {
                                      final itemDeliveryTime =timeList[index];
                                      final currentTime = getCurrentTime();
                                      final parsedDeliveryTime =
                                      parseDeliveryTime(itemDeliveryTime);

                                      Color rowColor = Colors.white70;
                                      if (parsedDeliveryTime.hour < currentTime.hour ||
                                          (parsedDeliveryTime.hour == currentTime.hour &&
                                              parsedDeliveryTime.minute < currentTime.minute)) {
                                        rowColor = Colors.yellow;
                                      } else {
                                        rowColor = Colors.white;
                                      }

                                      return Container(
                                        color: rowColor,
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
                                              flex: 2,
                                              child: SizedBox(
                                                child: Center(
                                                  child: Text("Normal"),
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
                                                  child: Text(timeList[index]),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: SizedBox(
                                                child: Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ReadyForDelivery(),
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: Colors.deepPurple,
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          'Engage',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
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
          ],
        ),
      ),
    );
  }
}
