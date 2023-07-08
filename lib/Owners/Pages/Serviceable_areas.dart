import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Areas extends StatefulWidget {
  const Areas({Key? key}) : super(key: key);

  @override
  State<Areas> createState() => _AreasState();
}

class _AreasState extends State<Areas> {
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
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Text('Serviceable Areas',
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
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 30,
                width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.blue)),
                child:
                TextFormField(
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
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
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 10),
                    hintText: 'Search..',
                  ),
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
            SizedBox(
              height: 200,
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
                          child: Text('Diera'),
                        ),
                        trailing: Checkbox(
                          checkColor: Colors.white,
                          value: false,
                          onChanged: (bool? value) {
                            setState(() {
                            });
                          },
                        ),
                      );
                },),
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
