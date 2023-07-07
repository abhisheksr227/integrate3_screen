
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Client dashboard.dart';
import 'Collection_Dashboard_90.dart';
import 'Dashboaed_86.dart';
import 'Delivered_dashboard.dart';
import 'Dispatch_dashboard.dart';
import 'Pickup_Dasboard.dart';

import 'Service_dashboard_87.dart';
import 'Staff_Dashboard92.dart';
import 'dashboard_85change.dart';


class Tester extends StatefulWidget {
  const Tester({Key? key}) : super(key: key);

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
          length: 9, child: Scaffold(
        body: TabBarView(
          children: [
            Dashboard(),sample(),Servicedashboard(),Pickupdashboard(),
            Dispatchdashboard(),CollectionDashboard(),Clientdashboard(),
            Staffdashboard(),Delivereddashboard()
          ],),
      ));
  }
}
