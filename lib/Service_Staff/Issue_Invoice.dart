import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IssueInvoice extends StatefulWidget {
  const IssueInvoice({Key? key}) : super(key: key);

  @override
  State<IssueInvoice> createState() => _IssueInvoiceState();
}

class _IssueInvoiceState extends State<IssueInvoice> {

  bool isButtonVisible = false;
  int selectedRowIndex = -1;

  void selectRow(int index) {
    setState(() {
      selectedRowIndex = index;
    });
  }


  void toggleButtonVisibility() {
    setState(() {
      isButtonVisible = !isButtonVisible;
    });
  }

  final ScrollController _horizontal = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 55),
          child: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu,color: Colors.deepPurple),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: IconButton(onPressed: () {},
                icon: const Icon(Icons.refresh_outlined,color: Colors.deepPurple,)),
          )
        ],
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        title: Center(
            child: Column(
              children: const [
                Text('LOGO',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                ),),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Welcome Back Deepesh !',
                    style: TextStyle(fontSize: 18,color: Colors.deepPurple),),
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Issue Invoice',
                style: TextStyle(color: Colors.indigo[900],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),),
            ),
            const SizedBox(height:  20,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Card(
                      elevation: 5,
                      color: Colors.white,
                      child: SizedBox(
                          height: 170,
                          width: 600,
                          child:ListView.builder(
                              itemCount: 1,
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context,index) {
                                return Column(children: [
                                  SizedBox(
                                      height: 70,
                                      width: 600,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15,bottom: 10),
                                            child: Row(children: [
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("Sl.No", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("Order No", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("Order Type", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("Staff", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("Delivery Type", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                              Expanded(child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text("No. Of Items", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),
                                            ]),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Container(
                                                height: 0.5,
                                                width: 600,
                                                color: Colors.deepPurple,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width:600,
                                    child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        physics: const ClampingScrollPhysics(),
                                        itemCount: 2,
                                        itemBuilder: (BuildContext context,int rowIndex){
                                          return  SizedBox(
                                              height: 40,
                                              width: 600,
                                              child:GestureDetector(
                                                onTap: () {
                                                  toggleButtonVisibility();
                                                  selectRow(rowIndex);
                                                },
                                                child: ListView.builder(
                                                    itemCount: 1,
                                                    scrollDirection: Axis.horizontal,
                                                    itemBuilder: (context,index) {
                                                      return Container(
                                                          height: 40,
                                                          width: 600,
                                                          color: selectedRowIndex == rowIndex ? Colors.grey : null,
                                                          child: Row(children: [
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("1", style: TextStyle(color: Colors.black),))),
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("102", style: TextStyle(color: Colors.black),))),
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("Normal", style: TextStyle(color: Colors.black),))),
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("Aswin", style: TextStyle(color: Colors.black),))),
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("Normal", style: TextStyle(color: Colors.black),))),
                                                            Expanded(child: Container(
                                                                alignment: Alignment.center,
                                                                child: Text("103", style: TextStyle(color: Colors.black),))),
                                                          ]));
                                                    }),
                                              ));


                                        }),)

                                ]);

                              })),
                    ),
                  ],
                ),
              ),
            ),
            if(isButtonVisible)
              Padding(
                padding: const EdgeInsets.all(50),
                child: InkWell(onTap: () {},
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple),
                    child: const Center(
                        child: Text('Generate',
                          style: TextStyle(
                              color: Colors.white, fontSize: 12),)),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
