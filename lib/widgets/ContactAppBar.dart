import 'package:flutter/material.dart';

import '../utils/CirAvatar.dart';

class ContactAppBar extends StatelessWidget{
  const ContactAppBar({Key? key, required this.contactName, required this.contactNum}) : super(key: key);

  final String contactName;
  final String contactNum;



  @override
  Widget build(BuildContext context) {
    return AppBar(
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

    );
  }

}