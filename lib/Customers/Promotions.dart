import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
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
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'PROMOTIONS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image.asset('Assets/Images/27d3aad990cc42c21cf0a8b756bd9ea6.jpg'),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Text('APPLY',style: TextStyle(color: Colors.blue[700]),),
                    ),
                  ),
    ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
