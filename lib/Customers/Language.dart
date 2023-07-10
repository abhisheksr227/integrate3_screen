import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String language = 'language' ;
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
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'LANGUAGE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Choose Your Preferred Language'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                width: 170,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: 'English',
                            groupValue: language,
                            onChanged: (value){
                              setState(() {
                                language = value! ;
                              });//selected value
                            }
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('English'),
                        ),
                        Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2,bottom: 2,left: 6,right: 6),
                              child: Text('Defualt',style: TextStyle(fontSize: 10,color: Colors.blue),),
                            )),
                      ],
                    ),
                Row(
                  children: [
                    Radio(
                        value: 'Hindi',
                        groupValue: language,
                        onChanged: (value){
                          setState(() {
                            language = value! ;
                          });//selected value
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Hindi'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Bangla',
                        groupValue: language,
                        onChanged: (value){
                          setState(() {
                            language=value! ;
                          });//selected value
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Bangla'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Urdu',
                        groupValue: language,
                        onChanged: (value){
                          setState(() {
                            language=value! ;
                          });//selected value
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Urdu'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 'Arabic',
                        groupValue: language,
                        onChanged: (value){
                          setState(() {
                            language=value! ;
                          });//selected value
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Arabic'),
                    ),
                  ],
                ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[700])),
                  onPressed: () {
                  },
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
