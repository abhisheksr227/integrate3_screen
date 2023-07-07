import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadyForDelivery extends StatefulWidget{
  const ReadyForDelivery({super.key});


  @override
  State<StatefulWidget> createState()=> OrdersNewUI();
}

class OrdersNewUI extends State{


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Ready For Delivery',
                    style: TextStyle(color: Colors.indigo[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),),
                )),
            const SizedBox(height:  20,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: SizedBox(
                    height: 165,
                    width: 600,
                    child:ListView.builder(
                        itemCount: 1,
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context,index) {
                          return Column(children: [
                            SizedBox(
                                height: 40,
                                width: 600,
                                child: Row(children: [
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Sl.No", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Order No", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Order Type", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Staff", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Client", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Inv. No", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                  Expanded(child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Amt", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                ])),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  height: 0.5,
                                  width: 600,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width:600,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const ClampingScrollPhysics(),
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context,int index){
                                    return  SizedBox(
                                        height: 40,
                                        width: 600,
                                        child:ListView.builder(
                                            itemCount: 1,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context,index) {
                                              return SizedBox(
                                                  height: 40,
                                                  width: 600,
                                                  child: Row(children: [
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("1", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("102", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("Normal", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("Abdu", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("Noor", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("103", style: TextStyle(color: Colors.black),))),
                                                    Expanded(child: Container(
                                                        alignment: Alignment.center,
                                                        child: Text("5000", style: TextStyle(color: Colors.black),))),
                                                  ]));
                                            }));


                                  }),)

                          ]);

                        })),
              ),
            ),
          ],),
      )
      ,);
  }
}