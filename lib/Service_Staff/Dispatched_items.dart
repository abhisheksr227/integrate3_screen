import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dispatcheditems extends StatefulWidget {
  const Dispatcheditems({Key? key}) : super(key: key);

  @override
  _DispatcheditemsState createState() => _DispatcheditemsState();
}

class _DispatcheditemsState extends State<Dispatcheditems> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 80,
        title: Center(child: Text("Dispatched",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
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
      body: Column(children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            "Sl No.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(
                              "Order No",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            "Order Type",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            "Staff",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Divider(
                    color: Colors.grey,
                    thickness: .3,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(parent: FixedExtentScrollPhysics()),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text("1"),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    alignment: Alignment.center,
                                    child: Text("1003"),
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text("Normal"),
                                ),
                                Container(
                                  width: 80,
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Text("Noor"),
                                ),
                              ],
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
              ),
            ),
          ),
        ),

        SizedBox(height: 30,),

      ]),
    );
  }
}
