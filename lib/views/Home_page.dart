import 'package:budgetmonthlyappui/components/Compelete_verication.dart';
import 'package:budgetmonthlyappui/components/Data_balance_appbar.dart';
import 'package:budgetmonthlyappui/components/Newsandpromo.dart';
import 'package:budgetmonthlyappui/components/activity.dart';
import 'package:budgetmonthlyappui/components/appbar_curve.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            child: const Stack(
              children: [
                Appbar_curve(),
                Databalance_appbar(),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "Activity",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            children: [
              Activity(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "Compelete verification",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Compelete_verection(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "News and promo",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Newsandpromo(),
        ],
      ),
    ));
  }
}
