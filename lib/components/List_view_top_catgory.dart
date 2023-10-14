import 'package:budgetmonthlyappui/components/Top_catgory.dart';
import 'package:budgetmonthlyappui/models/Catgory.dart';
import 'package:flutter/material.dart';

ListView Listview_top_catgory() {
  final List<Catgory_model> data_catgory = [
    Catgory_model(
      image: "🍔",
      rate: 0.5,
      title: "Eating out",
      price: "\$659",
    ),
    Catgory_model(
      image: "💳",
      rate: 0.9,
      title: "Shopping",
      price: "\$2500",
    ),
    Catgory_model(
      image: "🚀",
      rate: 0.3,
      title: "Travel & trip",
      price: "\$1200",
    ),
  ];
  return ListView.builder(
    padding: const EdgeInsets.only(left: 10, right: 10),
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    itemCount: data_catgory.length,
    itemBuilder: (context, index) {
      return Topcatgory(catgory_model: data_catgory[index]);
    },
  );
}
