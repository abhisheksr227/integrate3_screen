import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width*0.5,
                child: Row(
                  children: [
                    SizedBox(
                        child: ClipRRect(
                            child: Image.asset('name',fit: BoxFit.fill,))),
                    Text('Washing')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
