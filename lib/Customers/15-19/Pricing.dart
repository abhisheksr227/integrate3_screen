import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Transaction_History.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.blue[800],
          size: 30,
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
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Text(
                "PRICING",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: CupertinoColors.extraLightBackgroundGray,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Select Category",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: 65,
                    ),
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                         Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Sub category name",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Text("Rate",style: TextStyle(fontSize: 18),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Transactionhistory();
              },));
            }, child: Text("Next"))
          ]
          ),
        ),
    );
  }
}
