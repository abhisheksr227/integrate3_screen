import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'ReadyForDelivery.dart';

class ServicePendingScreen extends StatelessWidget {
  // Dummy list of orders with delivery times for testing
  final List<Map<String, dynamic>> orders = [
    {
      'jNo': '1',
      'orderNo': '1678',
      'orderType': 'Normal',
      'customerName': 'Abu',
      'staffName': 'Noor',
      'deliveryTime': '10:00 AM',
    },
    {
      'jNo': '2',
      'orderNo': '2345',
      'orderType': 'Urgent',
      'customerName': 'John',
      'staffName': 'Mike',
      'deliveryTime': '4:00 PM',
    },
    {
      'jNo': '3',
      'orderNo': '1678',
      'orderType': 'Normal',
      'customerName': 'shaa',
      'staffName': 'Noor',
      'deliveryTime': '8:00 PM',
    },
    {
      'jNo': '1',
      'orderNo': '1678',
      'orderType': 'Normal',
      'customerName': 'Abu',
      'staffName': 'Noor',
      'deliveryTime': '7:00 PM',
    },
    {
      'jNo': '1',
      'orderNo': '1678',
      'orderType': 'Normal',
      'customerName': 'Abu',
      'staffName': 'Noor',
      'deliveryTime': '4:00 PM',
    },
    // Add more orders here
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
        title: Center(child: Text("PENDING",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
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
                            height: 300,
                            child: ListView.builder(
                              itemCount: orders.length,
                              itemBuilder: (context, index) {
                                final order = orders[index];
                                final itemDeliveryTime = order['deliveryTime'];
                                final currentTime = getCurrentTime();
                                final parsedDeliveryTime =
                                parseDeliveryTime(itemDeliveryTime);

                                Color rowColor = Colors.white;
                                if (parsedDeliveryTime.hour < currentTime.hour ||
                                    (parsedDeliveryTime.hour == currentTime.hour &&
                                        parsedDeliveryTime.minute < currentTime.minute)) {
                                  rowColor = Colors.yellow;
                                } else {
                                  rowColor = Colors.grey;
                                }

                                return Container(
                                  color: rowColor,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(order['jNo']),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(order['orderNo']),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(order['orderType']),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(order['customerName']),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          child: Center(
                                            child: Text(order['staffName']),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                          height: 40,
                                          child: Center(
                                            child: Text(order['deliveryTime']),
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
                                                    'engaged',
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
    );
  }
}
