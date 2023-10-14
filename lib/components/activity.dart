import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});
  final List<Map<String, dynamic>> items = const [
    {"icon": Icons.send, "title": "transfer"},
    {"icon": Icons.credit_card, "title": "Mycard"},
    {"icon": Icons.area_chart, "title": "Insight"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Wrap(
        spacing: 20,
        children: List.generate(
          items.length,
          (index) {
            return Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff9b71f6),
                        borderRadius: BorderRadius.circular(18)),
                    child: Icon(
                      items[index]["icon"],
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[index]["title"],
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
