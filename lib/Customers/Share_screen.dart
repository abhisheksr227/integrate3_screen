import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  child: Text('Share App',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue[900]
                    ),),
                ),
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Refer Your Friend And Get'),
                    SizedBox(width: 15,),
                    Text('AED 10',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 150,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.asset('Assets/Images/Share.jpg',fit: BoxFit.fill,)),
                ),
                SizedBox(height: 30,),
                Text('Terms And Conditions'),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
                  Share.share('Check Out this new Laundry App');
                },
                  child: Text('Share Now',style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                ),
              ],
            ),
          ),
        ));
  }
}
