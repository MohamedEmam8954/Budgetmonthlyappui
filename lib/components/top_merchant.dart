import 'package:flutter/material.dart';

class Top_merchant extends StatelessWidget {
  const Top_merchant({super.key});
  final List data = const [
    {
      "image": "assets/pizza.png",
      "title": "Domin's pizza",
      "subtitle": "5 transaction",
      "price": "245\$",
    },
    {
      "image": "assets/Dropx.png",
      "title": "Drop box",
      "subtitle": "3 transaction",
      "price": "150\$",
    },
    {
      "image": "assets/starbucks.png",
      "title": "star bucks",
      "subtitle": "4 transaction",
      "price": "120\$",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 10,
                      blurRadius: 10)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            data[index]["image"],
                          ),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 10,
                              blurRadius: 10)
                        ]),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index]["title"],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      data[index]["subtitle"],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.3)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Text(
                  data[index]["price"],
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
