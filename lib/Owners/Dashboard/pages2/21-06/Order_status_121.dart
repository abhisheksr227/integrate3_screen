import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Order_Statistics_120.dart';
import 'Order_details_115.dart';
import 'Pending_Orders_118.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {




  Color color = Color(0xff0d2bd4);
  String? selectedOption;
  int allradionutton = 0;

  bool isButtonVisible = false;
  int selectedRowIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.10),
        child: AppBar(
          elevation: 0,
          backgroundColor: CupertinoColors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.blue[800],
            size: 30,
          ),
          title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text(
                  "LOGO",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),SizedBox(height: 10,),Text(
                  "Welcome Back Deepesh!",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 15
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.blue[800],
                ),
                SizedBox(width: 10,)
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "ORDER STATUS",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                ),
              ),SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: 'Mobile No/Order No',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),SizedBox(
                height: 20,
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: () {

              }, child: Text("View Items")),
SizedBox(
  height: 20,
),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row (
                          children: [
                            SizedBox(height: 20,),
                            Text("Order Date :"),SizedBox(width: 100,),Text("Order No :"),
                          ],
                        ),SizedBox(height: 20,),
                        Text("Invoice No :"),
                        SizedBox(height: 20,),
                        Row (
                          children: [
                            Text("Amount :"),SizedBox(width: 120,),Text("No of Items :"),
                          ],
                        ),SizedBox(height: 20,),
                        Row (
                          children: [
                            Text("Paid :"),SizedBox(width: 144,),Text("Balance :"),
                          ],
                        ),SizedBox(
                          height: 20,
                        ),
                        Text("Status : Delivered"),SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ),SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return OrderStatistics();
                    },));
                  }, child: Text("order statistics")),

                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return OrderDetails();
                    },));
                  }, child: Text("orderdetails"))
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PendingOrders();
                    },));
                  }, child: Text("pending orders"))
                ],
              )
            ]),
      ),
    );
  }
}
