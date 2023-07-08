import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({Key? key}) : super(key: key);

  @override
  State<CreateInvoice> createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  String Bank = 'Category';
  List<String> elements = ['Category'];
  bool New = false ;
  bool Add = false ;
  TextEditingController From = TextEditingController(text: DateFormat('dd-MM-yyyy').format(DateTime.now()));
  TextEditingController To = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Text(
                  'Create Invoice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 40,
                width: 250,
                child:
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(),
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                          width: 35,
                          decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))
                          ),
                          child: Icon(CupertinoIcons.search)),
                    ),
                    hintText: 'Search..',
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,bottom: 5),
                        child: Text('From'),
                      ),
                      Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue)),
                        child: TextFormField(
                          style: TextStyle(fontSize: 14),
                          controller: From,
                          onTap: () async {

                          FocusScope.of(context).requestFocus(FocusNode());
                          var pickedDate = await showDatePicker(
                              builder: (context, child) {
                                return Theme(
                                    data: ThemeData().copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white,
                                    surface: Colors.blue,
                                    onSurface: Colors.black,
                                  ),
                                  dialogBackgroundColor:Colors.blueGrey.shade50,
                                ), child: child!);

                              },
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000,01,01),
                              lastDate: DateTime(2050,12,31));
                          From.text = DateFormat('dd-MM-yyyy').format(pickedDate!);
                        }, decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(CupertinoIcons.calendar,color: Colors.blue,),
                          contentPadding: EdgeInsets.only(top: 1),
                        ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,bottom: 5),
                        child: Text('To'),
                      ),
                      Container(
                        height: 40,
                        width: 135,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue)),
                        child: TextFormField(
                          style: TextStyle(fontSize: 14),
                          controller: To,
                          onTap: () async {

                            FocusScope.of(context).requestFocus(FocusNode());
                            var pickedDate = await showDatePicker(
                                builder: (context, child) {
                                  return Theme(
                                      data: ThemeData().copyWith(
                                        colorScheme: ColorScheme.light(
                                          primary: Colors.blue,
                                          onPrimary: Colors.white,
                                          surface: Colors.blue,
                                          onSurface: Colors.black,
                                        ),
                                        dialogBackgroundColor:Colors.blueGrey.shade50,
                                      ), child: child!);

                                },
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000,01,01),
                                lastDate: DateTime(2050,12,31));
                            To.text = DateFormat('dd-MM-yyyy').format(pickedDate!);
                          }, decoration: InputDecoration(
                          hintText: 'Select date',
                          border: InputBorder.none,
                          prefixIcon: Icon(CupertinoIcons.calendar,color: Colors.blue,),
                          contentPadding: EdgeInsets.only(top: 1),
                        ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () { },
                        child: Text('Load',style: TextStyle(color: Colors.white),)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {
                        New = true ;
                      });
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Icon(CupertinoIcons.add,size: 16,color: Colors.white,),
                        ),
                        Text('New',style: TextStyle(color: Colors.white),),
                      ],
                    )),
              ),
            ),
            if(New)
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 40,
                width: 250,
                child:
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10),
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                          width: 35,
                          decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))
                          ),
                          child: Icon(CupertinoIcons.search)),
                    ),
                    hintText: 'Client Name/Mob No.',
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                return
                  Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Inv No : 155225644'),
                              ),
                              Text('Date : 08-06-2023'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Client Name : '),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Amount : '),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Status : Paid/Unpaid'),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Icon(Icons.edit,size: 15,color: Colors.blue,),
                                    ),
                                Icon(Icons.delete,size: 15,color: Colors.blue,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 140,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    setState(() {
                      Add = true ;
                    });
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(CupertinoIcons.add,size: 16,color: Colors.white,),
                      ),
                      Text('Add Items',style: TextStyle(color: Colors.white),),
                    ],
                  )),
            ),
            if(Add)
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                child: Container(
                  height: 315,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Select'),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue)),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(bottom: 10),
                                      prefix: SizedBox(
                                        width: 10,
                                      ),
                                      hintText: 'Category',
                                    ),
                                    value: Bank,
                                    items: elements.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                                    onChanged: (v) {
                                      setState(() {
                                        Bank = v!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Select'),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue)),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(bottom: 10),
                                      prefix: SizedBox(
                                        width: 10,
                                      ),
                                      hintText: 'Sub Category',
                                    ),
                                    value: Bank,
                                    items: elements.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
                                    onChanged: (v) {
                                      setState(() {
                                        Bank = v!;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text('Qty'),
                              SizedBox(
                                width: 45,
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Text('Rate'),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            onPressed: () { },
                            child: Text('Add',style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: SizedBox(
                  height: 145,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Sl No.",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                            child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Particulars",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Container(
                            width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Qty",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                            width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          color: Colors.blue,
                          height: 0.5,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1",
                                      )),
                                  Expanded(
                                    child: Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Credit",
                                        )),
                                  ),
                                  Container(
                                    width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "50",
                                      )),
                                  Container(
                                    width: 80,
                                      height: 40,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "60",
                                      )),
                                ],
                              );
                          },),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Discount')),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Next Taxable')),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Vat @ 5%')),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Grant')),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.blue)),
                    child: Center(child: Text('Total')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () { },
                    child: Text('Save',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}