import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                padding: const EdgeInsets.all(30),
                child: Text('PAYMENT HISTORY',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]
                  ),),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text('Current Wallet'),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue)),
                child: Center(child: Text('60',style: TextStyle(fontSize: 18),)),
              ),
                Text('Outstanding'),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue)),
                  child: Center(child: Text('0',style: TextStyle(fontSize: 18),)),
                ),
            ],),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  height: 160,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Date",
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
                                  "Type",
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
                                  "Amount",
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
                                  "Balance",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 0.5,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "01-10-2023",
                                        )),
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Credit",
                                        )),
                                  ),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "50",
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
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[700],
                      ),
                      child: Center(
                        child: Text('Exit',style: TextStyle(color: Colors.white,
                            fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
