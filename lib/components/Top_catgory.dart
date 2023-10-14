import 'package:budgetmonthlyappui/models/Catgory.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class Topcatgory extends StatelessWidget {
  const Topcatgory({super.key, required this.catgory_model});
  final Catgory_model catgory_model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.01),
              spreadRadius: 10,
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 85,
              child: CircleProgressBar(
                foregroundColor: Colors.blue,
                value: catgory_model.rate,
                backgroundColor: Colors.black.withOpacity(0.1),
                child: Center(
                  child: Text(
                    catgory_model.image,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Text(
              catgory_model.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              catgory_model.price,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.4)),
            ),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    spreadRadius: 10,
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "On track",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
