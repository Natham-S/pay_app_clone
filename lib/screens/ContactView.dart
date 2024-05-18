import 'package:flutter/material.dart';

import '../utils/CirAvatar.dart';
import '../widgets/PayWidget.dart';

class ContactView extends StatelessWidget{
  const ContactView({Key? key, required this.contactName, required this.contactNum}) : super(key: key);

  final String contactName;
  final String contactNum;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title:  Row(
          children: [
            CirAvatar(contactName: contactName),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contactName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500
                  ),
                ),
                Text("+91 $contactNum" , style: const TextStyle(fontSize: 12, color: Colors.grey),)
              ],
            ),
          ],
        ) ,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CirAvatar(contactName: contactName),
          Text(contactName),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.verified_user_rounded,color: Color(0xFFDDFFB0)),
              Text("Banking name:"),
              Text(contactName),


            ],
          ),
          Text(contactNum),
          Text("Joined March 2024"),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(), // Empty container to push PayWidget to the right
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PayWidget(amount: "200", contactName: contactName),
          ),
        ],
      ),
      ],

    )
    );
  }

}