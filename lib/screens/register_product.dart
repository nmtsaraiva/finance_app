import 'package:finance_app/models/product.dart';
import 'package:flutter/material.dart';

class RegisterProduct extends StatefulWidget {
  const RegisterProduct({Key? key}) : super(key: key);

  @override
  State<RegisterProduct> createState() => _RegisterProductState();
}

class _RegisterProductState extends State<RegisterProduct> {

  final TextEditingController _controllerProductName = TextEditingController();
  final TextEditingController _controllerProductValue = TextEditingController();
  final TextEditingController _controllerPurchaseDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Register product"),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Product name", labelStyle: TextStyle(fontSize: 21, color: Colors.white)
          ),
          controller: _controllerProductName,
        ),
        TextFormField(
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
              labelText: "Product value", labelStyle: TextStyle(fontSize: 21, color: Colors.white)
          ),
          controller: _controllerProductValue,
        ),
        TextFormField(
          keyboardType: TextInputType.datetime,
          decoration: const InputDecoration(
              labelText: "Purchase date", labelStyle: TextStyle(fontSize: 21, color: Colors.white)
          ),
          controller: _controllerPurchaseDate,
        ),
        Row(
          children: [
            FloatingActionButton(
                onPressed: (){
                  var product = Product(_controllerProductName.text, double.parse(_controllerProductValue.text), DateTime.parse(_controllerPurchaseDate.text), "", 2);
                  print(product);
                },
                child: const Text("Cancel")),
            FloatingActionButton(onPressed: (){}, child: const Text("Submit"),)
          ],
        )
      ],
    );
  }
}
