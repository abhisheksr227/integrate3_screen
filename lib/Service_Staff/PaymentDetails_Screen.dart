import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String selectedOption='cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        title: Center(child: Text("PAYMENT",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                surfaceTintColor: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text('CUSTOMER DETAILS',
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name'),
                              Text('Location'),
                              Text('Area'),
                              Text('Phone No.'),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Text(':'),
                              Text(':'),
                              Text(':'),
                              Text(':'),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Aswin'),
                              Text('Al Nadha'),
                              Text('Doha Street'),
                              Text('xxxxxxxxxx'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                surfaceTintColor: Colors.white,
                child: Column(children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('ORDER DETAILS', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Serial No.'),
                            Text('Item Name'),
                            Text('Mode'),
                            Text('Quantity'),
                            Text('Rate'),
                            Text('Total'),
                            Text('Discount'),
                            Text('Taxable Amount'),
                            Text('V A T'),
                            Text('Grand Total'),
                            Text('Previous Outstandings'),
                            Text('Amount'),
                            Text('Mode of Payment'),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(
                          children: [
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                            Text(':'),
                          ],
                        ),
                        SizedBox(width: 30,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('123'),
                            Text('Pants'),
                            Text('Normal'),
                            Text('5'),
                            Text('10'),
                            Text('50'),
                            Text('xx'),
                            Text('xx'),
                            Text('xx'),
                            Text('50'),
                            Text('30'),
                            Text('xxxx'),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'cash',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      },
                                    ),
                                    Text('Cash'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'cheque',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      },
                                    ),
                                    Text('Cheque'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'online',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value!;
                                        });
                                      },
                                    ),
                                    Text('Online'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {

                    });
                  },
                    child: Text('SAVE',style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
