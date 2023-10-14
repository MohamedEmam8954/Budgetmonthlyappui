import 'package:budgetmonthlyappui/components/Linechartbardata.dart';

import 'package:budgetmonthlyappui/components/appbar_balance.dart';

import 'package:flutter/material.dart';

class Your_balance extends StatelessWidget {
  const Your_balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Your Balance is \$1,752",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "By this time last month,you spent",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Slightly higher (\$2,450)",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(),
                  child: const Linechartbardata(),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 10,
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Appbar_balance(
                                    color: Color(0xffc04247),
                                    money: "\$1,460",
                                    text: "Spent"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, right: 10),
                                child: Appbar_balance(
                                    color: Color(0xff6054d3),
                                    money: "\$3,850",
                                    text: "Earned"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
