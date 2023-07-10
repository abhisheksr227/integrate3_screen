import 'package:dots_indicator/dots_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'orderdashboardui.dart';
import 'package:intl/intl.dart';

class sample extends StatefulWidget {
  const sample({Key? key}) : super(key: key);

  @override
  _sampleState createState() => _sampleState();
}

class _sampleState extends State<sample> {

  TextEditingController Date = TextEditingController(text: DateFormat('dd-MM-yyyy').format(DateTime.now()));




  final ScrollController _horizontal = ScrollController();
  final List<String> orderStages = [
    'Express',
    'Normal',
    'Confirmed',
    'Picked',
    'In process',
    'Finished',
    'Ready for dispatch',
    'Invoice generated',
    'Invoice value',
    'Dispatched',
    'Delivered',
    'Amount collected',
    'Deposited',
  ];

  final List<String> orderStagessecond = [
    'Via App',
    'Via self',
    'Via Call',
    'Total',

  ];

  Map<String, double> dataMap = {
    "Wash & Clean": 32.47,
    "Dry clean": 30.70,
    " Wash &Fold": 32.25,
  };

  List<Color> colorList = [
    Color(0xffD95AF3),
    Color(0xffFA4A42),
    Color(0xffFE9539)
  ];


  String? selectedOption;
  int allradionutton = 0;
  Widget bigCircle = new Container(
    width: 300.0,
    height: 300.0,
    decoration: new BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CupertinoColors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.blue,
            size: 30,
          ),title: Center(child: Text("Order Dashboard",style: TextStyle(color: Colors.blue),)),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.blue,
                ),
                SizedBox(width: 10,)
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            // SizedBox(height: 20,),
            // Text("Order Dashboard",
            //     style: TextStyle(
            //       fontSize: 20,
            //         color: Colors.blue[800],
            //         fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
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
                              width: MediaQuery.of(context).size.width*0.30,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                ),
                Radio<int>(
                  activeColor: Colors.lightBlue,
                  value: 0,
                  groupValue: allradionutton,
                  onChanged: (value) {
                    setState(() {
                      allradionutton = value!;
                    });
                  },
                ),
                SizedBox(width: 30),
                Text("All"),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
              SizedBox(
                height: 450,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DashboardCard(
                                title: 'New Customers',
                                value: '1000',
                                icon: Icons.person_add,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: DashboardCard(
                                title: 'Orders',
                                value: '400',
                                icon: Icons.shopping_cart,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DashboardCard(
                                title: 'Via Staff',
                                value: '200',
                                icon: Icons.people,
                                color: Colors.orange,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: DashboardCard(
                                title: 'Via Call',
                                value: '125',
                                icon: Icons.phone,
                                color: Colors.purple,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: DashboardCard(
                                title: 'Via App',
                                value: '15',
                                icon: Icons.mobile_friendly,
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color(0xffeb3483),
                        Color(0xffeb34a4),
                        Color(0xffeb9b34),
                      ])),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text("Express Orders",
                          style: TextStyle(color: CupertinoColors.white)),
                      Text("10", style: TextStyle(color: CupertinoColors.white))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color(0xff348ceb),
                        Color(0xff3dbff2),
                        Color(0xff8ecee8),
                      ])),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text("Normal Orders",
                          style: TextStyle(color: CupertinoColors.white)),
                      Text("300",
                          style: TextStyle(color: CupertinoColors.white))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                      onPressed: () {},
                      child: Text("New Order",style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text("Cancel ",style: TextStyle(color: Colors.white),),
                          Text(" Order",style: TextStyle(color: Colors.white),),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                      onPressed: () {},
                      child: Text("Assign Staff",style: TextStyle(color: Colors.white))),
                ),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800]),
                      onPressed: () {},
                      child: Text("Complaint",style: TextStyle(color: Colors.white))),
                )
              ],
            ),SizedBox(
              height: 20,
            )
            ,Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: [
                        Container(
                            height: 20,
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
                                    "Normal",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight:
                                        FontWeight.bold),
                                  )),
                              Container(
                                  width: 60,
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Express",
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
                                      width: 20,
                                      alignment:
                                      Alignment.center,
                                      child: Icon(Icons.arrow_right_outlined,size: 35,color: Colors.blue,),
                                    ),

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
                                          "",
                                          style: TextStyle(
                                              color: Colors
                                                  .black),
                                        )),
                                    Container(
                                        width: 60,
                                        alignment:
                                        Alignment.center,
                                        child: Text(
                                          "",
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
            ),

            SizedBox(
              height: 20,
            ),
Text("Staff Wise Orders")
,
            const SizedBox(height:  10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 140,
                          width: 600,
                          child: ListView.builder(
                            itemCount: 1,
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 600,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Staff Name",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Visited",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "New Clients",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "New Orders",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Confirmed",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Picked",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20), // Add space between columns
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Picked",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 600,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      physics: const ClampingScrollPhysics(),
                                      itemCount: 6,
                                      itemBuilder: (BuildContext context, int rowIndex) {
                                        return Column(
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: 600,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Icon(
                                                        Icons.arrow_right_alt,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                  Expanded(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        "",
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20), // Add space between columns
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              color: Colors.grey,
                                              thickness: .3,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
              child: Scrollbar(
                trackVisibility: true,
                controller: _horizontal,
                child: SizedBox(
                  height: 5,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height:
                    MediaQuery.of(context).size.height * .13,
                    width: MediaQuery.of(context).size.width * .22,
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                ),SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text("Name:"),
                    Text("Emp Id :"),
                  ],
                )
              ],
            ),
SizedBox(
  height: 50,
),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 240,
                              width: 300,
                              child: ListView.builder(
                                itemCount: 1,
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                        width: 300,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Orders",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Express",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Normal",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 200,
                                        width: 300,
                                        child: ListView.builder(
                                          padding: EdgeInsets.zero,
                                          physics: const ClampingScrollPhysics(),
                                          itemCount: 4,
                                          itemBuilder: (BuildContext context, int rowIndex) {
                                            return Column(
                                              children: [
                                                SizedBox(
                                                  height: 40,
                                                  width: 300,
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            orderStagessecond[rowIndex],
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            "",
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            "",
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey,
                                                  thickness: .3,
                                                  indent: 10,
                                                  endIndent: 10,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

            new DotsIndicator(dotsCount: 6,

            ),
            SizedBox(
              height: 20,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Confirmed:"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Picked:")
                          ],
                        ),
                      ],
                    ),SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Ready for dispatch:"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Delivered:"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Opening Balance:"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Deposited:")
                            ],
                          ),
                        )
                        ,Column(
                          children: [
                            Text("Total Inv Value:"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Collected:"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Closing Balance:"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Delivered:")
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("Expense:")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
            SizedBox(
              height: 40,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("More",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
             Icon(Icons.double_arrow,color: Colors.blue,)
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right:20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: PieChart(
                        PieChartData(
                            centerSpaceRadius: 1,
                            borderData: FlBorderData(show: false),
                            sections: [
                              PieChartSectionData(value: 30, color: Colors.green, radius: 100,title: 'Wash & Hang'),
                              PieChartSectionData(value: 70, color: Colors.orange[900], radius: 100,title: 'Dry Clean')
                              ,PieChartSectionData(value: 70, color: Colors.blue[900], radius: 100,title: 'Wash &Fold')
                            ])),
                  ),
                ],
              ),
            )
            ,
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width ,
                height: 300, // Adjust the height as needed
                child:LineChart(
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
                          const FlSpot(8, 20)
                        ],
                        dotData: FlDotData(show: false))
                  ]),
                ),
              ),
            ),
          ]),
        )));
  }}

