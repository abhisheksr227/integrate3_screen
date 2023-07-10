import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
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
                  child: Text('EDIT PROFILE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue[900]
                    ),),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Name : ',style: TextStyle(fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Ph No : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Emarate : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Building Address : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Area : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Locality : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('TRN : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 30),
                          child: Text('Email Id : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Registrent Details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue[900]
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20,bottom: 15),
                          child: Text('Name : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Mob No : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Email Id : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Flat No/House No : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Building Name : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Area : ',style: TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 15),
                          child: Text('Locality : ',style: TextStyle(fontSize: 16)),
                        )
                      ],
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: InkWell(onTap: () {

                },
                  child: Container(
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Tag GPS')),
                  ),
                ),
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(onTap: () {

                },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    color: Colors.blue[700],
                    ),
                    child: Center(
                      child: Text('SAVE',style: TextStyle(color: Colors.white,
                      fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
