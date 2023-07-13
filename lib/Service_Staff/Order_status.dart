import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orderstatus extends StatefulWidget {
  const Orderstatus({Key? key}) : super(key: key);

  @override
  _OrderstatusState createState() => _OrderstatusState();
}

class _OrderstatusState extends State<Orderstatus> {

  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple,size: 30),
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 80,
        title: Center(child: Text("ORDER STATUS",style: TextStyle(color: Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w500,))),
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
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 0,
                activeColor: Colors.deepPurple,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              Text('Mobile No'),
              SizedBox(width: 24.0),
              Radio(
                value: 1,
                activeColor: Colors.deepPurple,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              Text('Order No'),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 1.2,
            child: TextField(
              decoration: InputDecoration(suffixIcon: Container(decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))),child: Icon(Icons.search)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple),borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("The Order Status is pending")

          ,SizedBox(height: 30,),
        ],
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.deepPurple,
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.deepPurple,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white.withOpacity(0.6),
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.ac_unit),
      //         label: 'Complaint',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.notification_important_rounded),
      //         label: 'pending',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
