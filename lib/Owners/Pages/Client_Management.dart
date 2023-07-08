import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Management extends StatefulWidget {
  const Management({Key? key}) : super(key: key);

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  String character = 'All' ;
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
                padding: const EdgeInsets.only(top: 10,bottom: 15),
                child: Text(
                  'Client Management',
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
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ElevatedButton(onPressed: () { },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text('Sync',style: TextStyle(color: Colors.white),)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ElevatedButton(onPressed: () { },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          child: Text('List All',style: TextStyle(color: Colors.white),)),
                    ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ElevatedButton(onPressed: () { },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text('Add New',style: TextStyle(color: Colors.white),)),
                )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Text('Sl No.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Client Type',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 70,
                            child: Center(child: Text('Active',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Inactive',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                        ],
                      ),
            Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
            ),
            SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Center(child: Text('1'))
                              ),
                              Expanded(
                                child: SizedBox(
                                    child: Center(child: Text('General'))
                                ),
                              ),
                              SizedBox(
                                  width: 60,
                                  child: Center(child: Text('1200'))
                              ),
                              SizedBox(
                                  width: 70,
                                  child: Center(child: Text('500'))
                              ),
                              SizedBox(
                                  width: 60,
                                  child: Center(child: Text('1700'))
                              ),
                            ],
                          ),
                        );
                  },),
            ),
            Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
            ),
            Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 50,
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                          width: 60,
                          child: Center(child: Text('2400'))
                      ),
                      SizedBox(
                          width: 70,
                          child: Center(child: Text('1000'))
                      ),
                      SizedBox(
                          width: 60,
                          child: Center(child: Text('3400'))
                      ),
                    ],
                  ),
            ),
    ],
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
