import 'package:flutter/material.dart';
import 'package:pay_app/widgets/PayWidget.dart';

class DashBoard extends StatelessWidget{
  const DashBoard({super.key, required this.merchantName});

  final String merchantName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(merchantName),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
        ],
      ),
      body: Column(
        children: [
          PayWidget(amount: "500"),
        ],
      ) ,
    );
  }

}