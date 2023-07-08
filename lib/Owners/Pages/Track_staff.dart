import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {

  List<StepperData> stepperData = [
    StepperData(
      title: StepperText(
        "09:10",
      ),
    ),
    StepperData(
      title: StepperText("09:55"),
    ),
    StepperData(
      title: StepperText("10:00",)
    ),
    StepperData(
      title: StepperText("",
          textStyle: const TextStyle(
            color: Colors.grey,
          )),
    ),
  ];

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
                padding: const EdgeInsets.only(top: 40,bottom: 10),
                child: Text('Track Staff',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 40),
              child: AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                verticalGap: 40,
                iconWidth: 18,
                iconHeight: 19,
                activeBarColor: Colors.blue,
                inActiveBarColor: Colors.grey,
                activeIndex: 2,
                barThickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
