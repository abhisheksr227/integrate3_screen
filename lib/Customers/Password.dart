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
                padding: const EdgeInsets.all(40),
                child: Text('CHANGE PASSWORD',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]
                  ),),
              ),
            ),
            Container(
              height: 40,
              width: 200,
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
                height: 40,
                width: 200,
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
    );
  }
}
