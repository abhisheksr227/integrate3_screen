import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Outstanding extends StatefulWidget {
  const Outstanding({Key? key}) : super(key: key);

  @override
  State<Outstanding> createState() => _OutstandingState();
}

class _OutstandingState extends State<Outstanding> {
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
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'OUTSTANDING',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
              padding: const EdgeInsets.all(15),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  height: 180,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Sl No.",
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
                                  "Staff Name",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Container(
                            width: 120,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Total Outstanding",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
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
                        height: 120,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1",
                                      )),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Deepesh",
                                        )),
                                  ),
                                  Container(
                                    width: 120,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "100",
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
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Total : 300')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
