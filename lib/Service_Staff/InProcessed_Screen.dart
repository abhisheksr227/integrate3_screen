import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InprocessedScreen extends StatefulWidget {
  const InprocessedScreen({Key? key}) : super(key: key);

  @override
  State<InprocessedScreen> createState() => _InprocessedScreenState();
}

class _InprocessedScreenState extends State<InprocessedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        title: Center(child: Text("IN PROCESSED",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.refresh_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
