import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Finance controller"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ProductCard(
            dateTime: DateTime.now(),
            installments: 3,
            name: "Flutter course",
            typeOfPayment: "Credit card",
            value: 350.24,
          ),
        ],
      ),

    );
  }
}
