import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Price.dart';

class PriceGroup extends StatefulWidget {
  const PriceGroup({Key? key}) : super(key: key);

  @override
  State<PriceGroup> createState() => _PriceGroupState();
}

class _PriceGroupState extends State<PriceGroup> {
  String character = 'All' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                child: Text('Price Group',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Price(),));
                  },
                  child: Text('CREATE',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            ListTile(
              leading: Text('Sl. No',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              title: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text('Area Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('1'),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text('AW 1'),
                      ),
                      trailing: SizedBox(
                        width: 140,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(
                                  onTap: () { },
                                  child: Center(
                                      child: Text('View',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: InkWell(
                                  onTap: () { },
                                  child: Center(
                                      child: Text('Edit',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: InkWell(
                                onTap: () { },
                                child: Center(
                                    child: Text('Delete',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
