import 'package:flutter/material.dart';

class PayWidget extends StatelessWidget {
  const PayWidget({super.key, required this.amount, required this.contactName});

  final String amount;
  final String contactName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(32),
        boxShadow: const [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(0.0, 3.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment to $contactName"),
            Text(amount),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.verified_rounded),
                    Text("Paid"),
                    Icon(
                      Icons.circle,
                      size: 5,
                      color: Colors.white,
                    ),
                    Text("11 Jan"),

                  ],
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            )
          ],
        ),
      ),

    );



  }
}
