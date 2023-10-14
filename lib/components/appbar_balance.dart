import 'package:flutter/material.dart';

class Appbar_balance extends StatelessWidget {
  const Appbar_balance(
      {super.key,
      required this.color,
      required this.money,
      required this.text});
  final Color color;
  final String text;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      child: Row(
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: color,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    money,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
