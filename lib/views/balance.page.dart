import 'package:budgetmonthlyappui/components/List_view_top_catgory.dart';

import 'package:budgetmonthlyappui/components/top_merchant.dart';
import 'package:budgetmonthlyappui/components/yourbalance.dart';

import 'package:flutter/material.dart';

class Blance_page extends StatelessWidget {
  Blance_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Set budget",
                style: TextStyle(
                    color: const Color(0xff8b6bf4).withOpacity(0.7),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Your_balance(),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Top merchant",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Top_merchant(),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Top Catgory",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 250,
              child: Listview_top_catgory(),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
