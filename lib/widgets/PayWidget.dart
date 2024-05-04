import 'package:flutter/material.dart';

class PayWidget extends StatelessWidget {
  const PayWidget({super.key, required this.amount});

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text(amount),
          Text("time Stamp"),
          Text(""),
          ElevatedButton(onPressed: () {}, child: Text("Repeat Payment")),
        ]),
        CircleAvatar(backgroundColor: Colors.indigo)
      ],
    );
  }
}
