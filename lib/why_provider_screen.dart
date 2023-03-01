import 'dart:async';

import 'package:flutter/material.dart';

class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({Key? key}) : super(key: key);

  @override
  _WhyProviderScreenState createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer.periodic(const Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {

      });
    });
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Provider Screen"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(DateTime.now().hour.toString()+":" +DateTime.now().minute.toString()+":"+DateTime.now().second.toString(), style: const TextStyle(fontSize: 50)),
            ),
          ),
          Center(
            child: Container(
              child: Text(count.toString(), style: const TextStyle(fontSize: 50)),
            ),
          ),

        ],
      ),
    );
  }
}
