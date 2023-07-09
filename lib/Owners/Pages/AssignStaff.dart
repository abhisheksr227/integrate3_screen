import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignStaff extends StatefulWidget {
  const AssignStaff({Key? key}) : super(key: key);

  @override
  State<AssignStaff> createState() => _AssignStaffState();
}

class _AssignStaffState extends State<AssignStaff> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.blue;
  }


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
                padding: const EdgeInsets.only(top: 10,bottom: 15),
                child: Text(
                  'Assign Staff To Locality',
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Staff'),
                ),
                SizedBox(
                  width: 10,
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                        itemCount: 1,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            SizedBox(
                                height: 40,
                                width: 600,
                                child: Row(children: [
                                  Container(
                                    width: 60,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sl. No",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Area",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Locality",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                  Expanded(
                                      child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ))),
                                ])),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                color: Colors.blue,
                                height: 0.5,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: ClampingScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (BuildContext context, int rowIndex) {
                                    return SizedBox(
                                        height: 40,
                                        width: MediaQuery.of(context).size.width,
                                        child: ListView.builder(
                                          physics: ClampingScrollPhysics(),
                                            itemCount: 1,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                  height: 40,
                                                  width: MediaQuery.of(context).size.width,
                                                  child: Row(children: [
                                                    Container(
                                                      width: 60,
                                                        alignment:
                                                        Alignment.center,
                                                        child: Text(
                                                          "1",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black),
                                                        )),
                                                    Expanded(
                                                        child: Container(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(
                                                              "Al Nadha",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            ))),
                                                    Expanded(
                                                        child: Container(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(
                                                              "AW 1",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            ))),
                                                    Expanded(
                                                        child: Container(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Checkbox(
                                                              checkColor: Colors.white,
                                                              fillColor: MaterialStateProperty.resolveWith(getColor),
                                                              value: isChecked,
                                                              onChanged: (bool? value) {
                                                                setState(() {
                                                                  isChecked = value!;
                                                                });
                                                              },
                                                            ))),
                                                  ]));
                                            }));
                                  }),
                            ),
                          ]);
                        })),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                  onPressed: () {},
                  child: Text('SAVE',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
