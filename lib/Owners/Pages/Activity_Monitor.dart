import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  String character = "All" ;
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
          toolbarHeight: 50,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  'ACTIVITY MONITOR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
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
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Date : ',style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Default(Today)'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 15),
              child: Container(
                height: 1,
                width: 150,
                decoration: BoxDecoration(color: Colors.blue ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                return
                    ListTile(
                      leading: Text('6.40 Pm :'),
                      title: Text('Order No : 74 Completed Ready for despatch'),
                    );
              },),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text('15 New',style: TextStyle(
                          fontSize: 18,
                            color: Colors.white))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(5),),
                    child:  Center(
                        child: Text('8 Pending',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white))),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Column(
                          children: [
                            Text('20',style: TextStyle(
                                fontSize: 18,
                                color: Colors.white)),
                            Text('Ready for Delivery',style: TextStyle(
                                fontSize: 18,
                                color: Colors.white)),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(5),),
                    child:  Center(
                        child: Text('25 Delivered',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Container(
                width: 160,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(5),),
                child:  Column(
                  children: [
                    Center(
                        child: Text('2000',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white))),
                    Center(
                        child: Text('Total Collection',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
