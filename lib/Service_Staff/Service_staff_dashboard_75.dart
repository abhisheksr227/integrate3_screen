import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Issue_Invoice.dart';
import 'Order_status.dart';
import 'ReadyForDelivery.dart';
import 'Service_login.dart';


class StaffServiceDashboard extends StatefulWidget {
  const StaffServiceDashboard({Key? key}) : super(key: key);

  @override
  State<StaffServiceDashboard> createState() => _StaffServiceDashboardState();
}

class _StaffServiceDashboardState extends State<StaffServiceDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 55),
          child: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu,color: Colors.deepPurple),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: IconButton(onPressed: () {},
                icon: const Icon(Icons.refresh_outlined,color: Colors.deepPurple,)),
          )
        ],
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        title: Center(
            child: Column(
              children: const [
                Text('LOGO',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Welcome Back Deepesh !',
                    style: TextStyle(fontSize: 18,color: Colors.deepPurple),),
                )
              ],
            )),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            const Text('Service Staff Dashboard',
              style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
            SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text('Order Summary', style: TextStyle(fontSize: 14,),),
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        child: Text('350', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      ),
                      Text('PENDING',
                        style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepPurple,
                      child: Text('100',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    ),
                    Text('NEW',style: TextStyle(fontSize: 12),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        child: Text('250',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      ),
                      Text('COMPLETED',style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => IssueInvoice(),));
                     },
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple
                      ),
                      child: const Center(child: Text('Generate Invoice',
                        style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Orderstatus(),));
                    },
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple
                      ),
                      child: const Center(
                          child: Text('Order Status',
                            style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child:
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceLogin(),));
                 },
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple
                  ),
                  child: const Center(
                      child: Text('Engage',
                        style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Order Type',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Name',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 0.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.deepPurple,
                          ),
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
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Normal')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Abdu')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('100')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('50')),
                                    ),
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
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 15,left: 20),
                  child: Text('(If Engage is Clicked)',style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Text('Sl.No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Order No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: Center(child: Text('Staff',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Delivery Time',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 40,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 0.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.deepPurple,
                          ),
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
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('1')),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                        child: Text('108')),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                        child: Text('Abdu')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Today 4 : 00 pm')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 60,
                                    child: Center(
                                      child:  InkWell(onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReadyForDelivery(),));
                                      },
                                        child: Container(
                                          height: 20,
                                          width: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.deepPurple),
                                          child: const Center(child: Text('Engage',style: TextStyle(color: Colors.white,fontSize: 10),)),
                                        ),
                                      ),),
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
            SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(top: 10,bottom: 8),
              child: Text('Category Wise Orders',
                style: TextStyle(fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Text('Sl.No',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Catagory',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 50,
                            child: Center(child: Text('New',style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: Center(child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 0.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('1')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('Dry Clean')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                        child: Text('50')),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                          child: Text('100')),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(child: Text('50')),
                                    ),
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
          ],
        ),
      ),
    );
  }
}