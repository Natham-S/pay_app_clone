import 'package:flutter/material.dart';

class CirAvatar extends StatelessWidget{
  const CirAvatar({super.key, required this.contactName});

  final String contactName;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green,
      child: Text(contactName[0],style: const TextStyle(color: Colors.white),),
    );
  }

}