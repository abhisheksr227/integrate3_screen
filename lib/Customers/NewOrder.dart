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
  String selectedValue = '';
  bool expressSelected = false;
  bool normalSelected = false;
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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text('NEW ORDER',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 'Normal',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text('Normal')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 'Express',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text('Express')
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text('Available Offers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue[900]
                      ),),
                    Text('(Selected Only One)'),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.blue,
                            value: 'Normal',
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                          Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Promo Code - 20'),
                              )))
                        ],
                      ),
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.blue,
                      value: 'Express',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                    ),
                    Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Ramadan - 10'),
                        )))
                  ],
                ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.blue,
                  value: expressSelected,
                  onChanged: (value) {
                    setState(() {
                      expressSelected = value!;
                    });
                  },
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Direct Staff'),
                    ),
                    Text('(Default)')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Checkbox(
                  activeColor: Colors.blue,
                  value: normalSelected,
                  onChanged: (value) {
                    setState(() {
                      normalSelected = value!;
                    });
                  },
                ),
                Text('Contactless'),
              ],
            ),
            SizedBox(height: 30,),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Picking Time'),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text('9:00am - 11:00am'),
                    SizedBox(height: 15,),
                    Text('11:00am - 1:00pm'),
                    SizedBox(height: 15,),
                    Text('1:00pm - 3:00pm'),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Contactlessmode(),));
            },
              child: Text('ORDER NOW',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
            ),
            SizedBox(height: 30,),
            Text('Terms & Conditions')
          ],
        ),
      ),
    );
  }
}
