import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../chartdataclass.dart';

class OrderStatistics extends StatefulWidget {
  const OrderStatistics({Key? key}) : super(key: key);

  @override
  _OrderStatisticsState createState() => _OrderStatisticsState();
}

class _OrderStatisticsState extends State<OrderStatistics> {


  final List<SalesData> data = [
    SalesData('Staff1', 10, 7),
    SalesData('Staff2', 5, 3),
    SalesData('Staff3', 8, 6),
    SalesData('Staff4', 15, 9),
  ];


  int amountradio=0;

  Map<String, double> dataMap = {
    "Staff 1": 25,
    "Staff 2": 25,
    "Staff 3": 25,
    "Staff 4": 25,
  };

  List<Color> colorList = [
    Color(0xffD95AF3),
    Color(0xff3EE094),
    Color(0xff3398F6),
    Color(0xffFA4A42),
    Color(0xffFE9539)
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  "ORDER STATISTICS",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[800]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Branch"),
                  SizedBox(width: 30),
                  DropdownButton<String>(
                    hint: Text(
                      "Select",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    value: selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue;
                      });
                    },
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                      'Option 4'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  children: [
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dry clean :15"),
            SizedBox(
              height: 20,
            ),      Text("Wash & Fold :25"),
            SizedBox(
              height: 20,
            ),      Text("Carpet cleaning :15"),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ) ,Expanded(
      child: Column(
        children: [
          PieChart(
            dataMap: dataMap,
            colorList: colorList,
            chartRadius: MediaQuery.of(context).size.width / 2,
            ringStrokeWidth: 24,
            animationDuration:  Duration(seconds: 3),
            chartValuesOptions:  ChartValuesOptions(
                showChartValues: true,
                showChartValueBackground: false),

            legendOptions:  LegendOptions(showLegends: false),
          )
        ],
      ),
    ),
  ],

  ),
),SizedBox(
                height: 20,
              ),
              Text("Amount",style: TextStyle(fontSize: 20,color: Colors.blue[900]),)
             , Padding(
               padding: const EdgeInsets.only(right: 10),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Row(
                     children: [
                       Radio<int>(
                         activeColor: Colors.lightBlue,
                         value: 0,
                         groupValue: amountradio,
                         onChanged: (value) {
                           setState(() {
                             amountradio = value!;
                           });
                         },
                       ),Text('Order ID'),
                     ],
                   ), Row(
                     children: [
                       Radio<int>(
                         hoverColor: Colors.lightBlue,
                         activeColor: Colors.lightBlue,
                         value: 1,
                         groupValue: amountradio,
                         onChanged: (value) {
                           setState(() {
                             amountradio = value!;
                           });
                         },
                       ),
                       Text('Mobile No'),
                     ],
                   )

                 ],
               ),
             ),
SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  padding:  EdgeInsets.all(16),
                  child: charts.BarChart(
                    [
                      charts.Series<SalesData, String>(
                        id: 'sales',
                        domainFn: (SalesData sales, _) => sales.category,
                        measureFn: (SalesData sales, _) => sales.count,
                        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                        data: data,
                      ),
                    ],
                    animate: true,

                  ),

                ),
              ),

            ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.lightBlue,
        child: BottomNavigationBar(
          backgroundColor: Colors.blue[800],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: 'Track',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_rounded),
              label: 'Complaint',
            ),
          ],
        ),
      ),
    );
  }
}