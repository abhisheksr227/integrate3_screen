import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delivered extends StatefulWidget {
  const Delivered({Key? key}) : super(key: key);

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
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
                padding: const EdgeInsets.all(10),
                child: Text('DELIVERED',
                  style: TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]
                  ),),
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
                SizedBox(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 40,
                          width: 250,
                          child:
                          TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: Container(
                                    width: 35,
                                    decoration: BoxDecoration(color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))
                                    ),
                                    child: Icon(CupertinoIcons.search)),
                              ),
                              hintText: 'Search..',
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Radio(
                        value: '',
                        groupValue: character,
                        onChanged: (value) {
                          setState(() {
                            character = value!;
                          });
                        },
                      ),
                      Text('Order No.'),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Radio(
                        value: '',
                        groupValue: character,
                        onChanged: (value) {
                          setState(() {
                            character = value!;
                          });
                        },
                      ),
                      Text('Mobile No.'),
                    ],
                  ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 320,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Text('9 : 30am'),
                        title: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(':'),
                            ),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Order No : 101'),
                                Text('Inv Value : 10'),
                                Text('Client Name : Noor'),
                                Text('Amount recieved : 10'),
                                Text('Mode : Normal'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
              },),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('1',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('2',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('3',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('4',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('5',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
