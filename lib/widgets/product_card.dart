import 'dart:math';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.name, required this.value, required this.dateTime, required this.typeOfPayment, required this.installments});

  final String name;
  final double value;
  final DateTime dateTime;
  final String typeOfPayment;
  final int installments;

  List<Color> colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow, Colors.pink, Colors.purple];
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int index = random.nextInt(colors.length);
    return Card(
        child: Container(
          color: colors[index],
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(name, style: const TextStyle(fontSize: 20),),
              Text(value.toString()),
              Text(dateTime.toString()),
              Text(typeOfPayment),
              Text(installments.toString())
            ],
          ),
        )
    );
  }
}
