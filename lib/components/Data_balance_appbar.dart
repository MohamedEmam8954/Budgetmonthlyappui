import 'package:budgetmonthlyappui/components/appbar_balance.dart';
import 'package:flutter/material.dart';

class Databalance_appbar extends StatelessWidget {
  const Databalance_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0.0,
      left: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 10,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Appbar_balance(
                        color: Color(0xff6054d3),
                        money: "\$3,850",
                        text: "Earned"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You spend \$1,32 on dining out on this month.",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "let's try to make it lower",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Tell me more...",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff886af3),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
