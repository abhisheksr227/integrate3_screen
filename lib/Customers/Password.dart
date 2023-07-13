import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 80,
        title: Center(child: Text("CHANGE PASSWORD",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.refresh_outlined,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue)),
                child: TextFormField(textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.only(),
                    hintText: 'New Password',
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue)),
                  child: TextFormField(textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.only(),
                      hintText: 'Re Enter',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(onTap: () {
                },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
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
          ),
        ),
      ),
    );
  }
}
