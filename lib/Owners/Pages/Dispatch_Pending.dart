import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DispatchPending extends StatefulWidget {
  const DispatchPending({Key? key}) : super(key: key);

  @override
  State<DispatchPending> createState() => _DispatchPendingState();
}

class _DispatchPendingState extends State<DispatchPending> {
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
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Dispatch Pending',
                      style: TextStyle(
                        fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]
                      ),),
                    Text('for more than 2 days',
                      style: TextStyle(
                        fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]
                      ),),
                  ],
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
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  height: 385,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Sl No.",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                              width: 65,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Order No.",
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
                                  "Client",
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
                                  "Staff",
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
                                "Inv",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                              width: 50,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Inv Amt",
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
                        height: 320,
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  Container(
                                      width: 40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1",
                                      )),
                                  Container(
                                      width: 65,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "10",
                                      )),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text('Noor')
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text('Abdu')
                                    ),
                                  ),
                                  Container(
                                      width: 50,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "10",
                                      )),
                                  Container(
                                      width: 50,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "10",
                                      )),
                                ],
                              );
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Total : 5000 '),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
