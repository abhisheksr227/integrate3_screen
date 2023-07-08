import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integrate_3screens/Owners/Pages/Invoice.dart';
import 'package:intl/intl.dart';

import '../Pages/Add_clients.dart';
import '../Pages/New_Order.dart';

class DataItem {
  int x;
  double y1;
  double y2;
  double y3;
  double y4;
  DataItem(
      {required this.x, required this.y1, required this.y2, required this.y3,required this.y4});
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController Date = TextEditingController(text: DateFormat('dd-MM-yyyy').format(DateTime.now()));


  String character = 'All' ;

  final List<DataItem> _myData = List.generate(
      3,
          (index) => DataItem(
        x: index,
        y1: Random().nextInt(20) + Random().nextDouble(),
        y2: Random().nextInt(20) + Random().nextDouble(),
        y3: Random().nextInt(20) + Random().nextDouble(),
        y4: Random().nextInt(20) + Random().nextDouble(),
      ));

  String selectedOption='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.blue),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.refresh_outlined,
                    color: Colors.blue,
                  )),
            )
          ],
          title: Center(
              child: Column(
                children: const [
                  Text('LOGO', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),),
                  Text('Welcome Back Deepesh !',
                    style: TextStyle(fontSize: 18, color: Colors.blue),)
                ],
              )),
          toolbarHeight: 100,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(height:10),
                  const Text('Owners Dashboard',
                    style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Branch'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue)),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 10),
                              prefix: SizedBox(
                                width: 10,
                              ),
                              hintText: 'Select',
                            ), items: [
                            DropdownMenuItem(child: Text('select'))
                          ],
                            onChanged: (value) {  },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: '',
                        groupValue: character,
                        onChanged: (value) {
                          setState(() {
                            character = value!;
                          });
                        },
                      ),
                      Text('All'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text('At a Glance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 25),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurple,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Orders',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('25',style: TextStyle(color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurpleAccent[100],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Picked',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('18',style: TextStyle(color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.indigo[400],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Ready for Delivery',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('30',style: TextStyle(color: Colors.indigo[400],
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue[400],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Pending',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('23',style: TextStyle(color: Colors.blue[400],
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange[900],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Add Leads',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('20',style: TextStyle(color: Colors.orange[900],
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Collection',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('250',style: TextStyle(color: Colors.orange,
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.lightGreenAccent[700],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('New Bag Request',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('50',style: TextStyle(color: Colors.lightGreenAccent[700],
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.lightGreen[700],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text('Bag to be Supplyed',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            elevation: 3,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Text('65',style: TextStyle(color: Colors.lightGreen[700],
                                  fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 40),
                        child: InkWell(onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => NewOrder(),));
                        },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[600]),
                            child: Center(child: Text('New Order',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40,right: 30),
                        child: InkWell(onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => OrdersMap(),));
                        },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[600]),
                            child: Center(child: Text('Order Status',
                              style: TextStyle(color: Colors.white
                              ),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 20),
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddClients(),));
                        },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[600]),
                            child: Center(child: Text('New Client',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,right: 30),
                        child: InkWell(onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Invoice(),));
                        },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[600]),
                            child: Center(child: Text('Check Outstanding',
                              style: TextStyle(color: Colors.white
                              ),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Areas(),));
                    },
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            color: Colors.blue[600]),
                        child: Center(child: Text('Availability',
                          style: TextStyle(color: Colors.white
                          ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.arrow_right_outlined,size: 35,color: Colors.blue,),
                                Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      textAlign: TextAlign.center,
                                      controller: Date,
                                      style: TextStyle(fontSize: 14),
                                      onTap: () async {
                                        FocusScope.of(context).requestFocus(FocusNode());
                                        var pickedDate = await showDatePicker(
                                            builder: (context, child) {
                                              return Theme(
                                                  data: ThemeData().copyWith(
                                                    colorScheme: ColorScheme.light(
                                                      primary: Colors.blue,
                                                      onPrimary: Colors.white,
                                                      surface: Colors.blue,
                                                      onSurface: Colors.black,
                                                    ),
                                                    dialogBackgroundColor:Colors.blueGrey.shade50,
                                                  ), child: child!);

                                            },
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000,01,01),
                                            lastDate: DateTime(2050,12,31));
                                        Date.text = DateFormat('dd-MM-yyyy').format(pickedDate!);
                                      },
                                      decoration: InputDecoration(border: InputBorder.none,
                                      ),
                                    )
                                ),
                                Icon(Icons.arrow_left_outlined,size: 35,color: Colors.blue,),
                              ],
                            )
                        ),
                        Text('Order Value : 250')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Column(
                          children: [
                            Container(
                                height: 40,
                                child: Row(children: [
                                  Container(
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sl. No",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Particulars",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Container(
                                      width: 60,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Today",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                      width: 60,
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "This Month",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ])),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Colors.blue,
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(
                              height: 360,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  padding: EdgeInsets.zero,
                                  itemCount: 50,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return SizedBox(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(children: [
                                        Container(
                                          width: 50,
                                          alignment:
                                          Alignment.center,
                                          child: Icon(Icons.arrow_right_outlined,size: 35,color: Colors.blue,),
                                        ),
                                        Container(
                                            width: 50,
                                            alignment:
                                            Alignment.center,
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors
                                                      .black),
                                            )),
                                        Expanded(
                                            child: Container(
                                                alignment:
                                                Alignment.center,
                                                child: Text(
                                                  "Express Orders",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .black),
                                                ))),
                                        Container(
                                            width: 60,
                                            alignment:
                                            Alignment.center,
                                            child: Text(
                                              "5",
                                              style: TextStyle(
                                                  color: Colors
                                                      .black),
                                            )),
                                        Container(
                                            width: 60,
                                            alignment:
                                            Alignment.center,
                                            child: Text(
                                              "1236",
                                              style: TextStyle(
                                                  color: Colors
                                                      .black),
                                            )),
                                      ]),
                                    );
                                  }),
                            )
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Category Wise',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  SizedBox(
                    height: 285,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Sl.No",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Expanded(
                                  child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Category",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Container(
                                    width: 50,
                                    height: 40,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    height: 40,
                                    width: 70,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Processed",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    height: 40,
                                    width: 60,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    height: 40,
                                    width: 60,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Delivered",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Colors.blue,
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return
                                    Container(
                                        height: 40,
                                        width: MediaQuery.of(context).size.width,
                                        child: Row(children: [
                                          Container(
                                              width: 40,
                                              alignment:
                                              Alignment.center,
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black),
                                              )
                                          ),
                                          Expanded(
                                            child: Container(
                                                alignment:
                                                Alignment.center,
                                                child: Text(
                                                  "Dry Clean",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .black),
                                                )),
                                          ),
                                          Container(
                                              width: 50,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "10",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black),
                                              )),
                                          Container(
                                              width: 70,
                                              alignment:
                                              Alignment.center,
                                              child: Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black),
                                              )),
                                          Container(
                                              width: 60,
                                              alignment:
                                              Alignment.center,
                                              child: Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black),
                                              )),
                                          Container(
                                              width: 60,
                                              alignment:
                                              Alignment.center,
                                              child: Text(
                                                "5",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black),
                                              )),
                                        ]));
                                },),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Item Wise',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 430,
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Item",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Hang",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Fold",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Expanded(
                                  child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Roll",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Colors.blue,
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(
                              height: 360,
                              child: ListView.builder(
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  return
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                              height: 40,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Shirts",
                                              )),
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 40,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "60",
                                              )),
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 40,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "100",
                                              )),
                                        ),
                                        Expanded(
                                          child: Container(
                                              height: 40,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "250",
                                              )),
                                        ),
                                      ],
                                    );
                                },),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Staff Wise Orders',style: TextStyle(
                          color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('Sales',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.blue)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Cash on Delivery',
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value!;
                                              });
                                            },
                                          ),
                                          Center(child: Text('Last 7 Days')),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Cash on Delivery',
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value!;
                                              });
                                            },
                                          ),
                                          Center(child: Text('Today')),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 30),
                    child: SizedBox(
                      height: 300,
                      child: BarChart(
                          BarChartData(
                              gridData: FlGridData(show: false),
                              borderData: FlBorderData(
                                  border: const Border(
                                    top: BorderSide.none,
                                    right: BorderSide.none,
                                    left: BorderSide(width: 1),
                                    bottom: BorderSide(width: 1),
                                  )),
                              groupsSpace: 10,
                              titlesData: FlTitlesData(topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  bottomTitles: AxisTitles(sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget:
                                        (value, meta) {
                                      String text = '';
                                      switch (value.toInt()) {
                                        case 1:
                                          text = 'Ahamad';
                                          break;
                                        case 2:
                                          text = 'Sogin';
                                          break;
                                        case 3:
                                          text = 'Deepesh';
                                          break;
                                        case 4:
                                          text = 'Abdul';
                                          break;
                                        case 5:
                                          text = 'Shalu';
                                          break;
                                      }

                                      return Text(text);
                                    },
                                  ))),

                              // add bars
                              barGroups: [
                                BarChartGroupData(x: 1, barRods: [
                                  BarChartRodData(toY: 10, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 2, barRods: [
                                  BarChartRodData(toY: 9, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 3, barRods: [
                                  BarChartRodData(toY: 4, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 4, barRods: [
                                  BarChartRodData(toY: 2, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 5, barRods: [
                                  BarChartRodData(toY: 13, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                ]),
                              ])),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Order v/s Delivery',style: TextStyle(
                          color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('Sales',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.blue)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Cash on Delivery',
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value!;
                                              });
                                            },
                                          ),
                                          Center(child: Text('Last 7 Days')),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'Cash on Delivery',
                                            groupValue: selectedOption,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedOption = value!;
                                              });
                                            },
                                          ),
                                          Center(child: Text('Today')),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: BarChart(BarChartData(
                          gridData: FlGridData(show: false),
                          borderData: FlBorderData(
                              border: const Border(
                                top: BorderSide.none,
                                right: BorderSide.none,
                                left: BorderSide(width: 1),
                                bottom: BorderSide(width: 1),
                              )),
                          titlesData: FlTitlesData(
                              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
                                getTitlesWidget:
                                    (value, meta) {
                                  String text = '';
                                  switch (value.toInt()) {
                                    case 0:
                                      text = 'March 28';
                                      break;
                                    case 1:
                                      text = 'March 27';
                                      break;
                                    case 2:
                                      text = 'March 26';
                                      break;
                                  }

                                  return Text(text);
                                },)),
                              leftTitles: AxisTitles(sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget:
                                      (value, meta) {
                                    String text = '';
                                    switch (value.toInt()) {
                                      case 0:
                                        text = '0';
                                        break;
                                      case 2:
                                        text = '10';
                                        break;
                                      case 4:
                                        text = '20';
                                        break;
                                      case 6:
                                        text = '30';
                                        break;
                                      case 8:
                                        text = '40';
                                        break;
                                      case 10:
                                        text = '50';
                                        break;
                                      case 12:
                                        text = '60';
                                        break;
                                    }
                                    return Text(text);
                                  }
                              ))),
                          barGroups: _myData
                              .map((dataItem) =>
                              BarChartGroupData(x: dataItem.x, barRods: [
                                BarChartRodData(
                                    toY: dataItem.y1, width: 25, color: Colors.blue,borderRadius: BorderRadius.zero),
                                BarChartRodData(
                                    toY: dataItem.y2, width: 25, color: Colors.grey,borderRadius: BorderRadius.zero),
                              ]))
                              .toList())),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Sales Summery',style: TextStyle(
                          color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Last 7 Days'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 300,
                    child: LineChart(
                      LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(
                              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))
                          ),
                          borderData: FlBorderData(
                              show: true, border: Border(left: BorderSide(color: Colors.black),
                              bottom: BorderSide(color: Colors.black))), lineBarsData: [
                        LineChartBarData(
                            isCurved: false,
                            spots: [
                              FlSpot(0, 10),
                              const FlSpot(1, 8),
                              const FlSpot(2, 10),
                              const FlSpot(3, 7),
                              const FlSpot(4, 12),
                              const FlSpot(5, 13),
                              const FlSpot(6, 17),
                              const FlSpot(7, 15),
                            ],
                            dotData: FlDotData(show: false))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Income v/s Expense',style: TextStyle(
                          color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 140,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue)),
                          child: Column(
                            children: [
                              Center(child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Cash on Delivery',
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Last 7 Days'),
                                ],
                              )),
                              Center(child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Cash on Delivery',
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('This Month'),
                                ],
                              )),
                              Center(child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'Cash on Delivery',
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('This Day'),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ]
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 250,
                        width: 250,
                        child: PieChart(
                            PieChartData(
                                centerSpaceRadius: 1,
                                borderData: FlBorderData(show: false),
                                sections: [
                                  PieChartSectionData(value: 30, color: Colors.green, radius: 100,title: 'Expence'),
                                  PieChartSectionData(value: 70, color: Colors.orange[900], radius: 100,title: 'Income')
                                ])),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Income : 170000.00'),
                          Text('Expence : 30000.00'),
                          Text('Profit : 140000.00'),
                        ],
                      )
                    ],
                  ),
                ]
            )
        )
    );
  }
}
