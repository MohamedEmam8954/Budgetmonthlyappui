import 'package:budgetmonthlyappui/views/balance.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Appbar_curve extends StatelessWidget {
  const Appbar_curve({super.key});

  @override
  Widget build(BuildContext context) {
    var sizew = MediaQuery.sizeOf(context).width;
    var sizeh = MediaQuery.sizeOf(context).height;
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: sizew,
        height: sizeh * 0.25,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff7663f0),
            Color(0xff9e72f7),
          ]),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Blance_page();
                  },
                ));
              },
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                r"$",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                r"1.752",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 33,
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/photo.jpg",
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 6,
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        r"Available balance",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
