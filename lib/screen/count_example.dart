import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/provider/count_provider.dart';


class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  _CountExampleState createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(
         builder: (context, value, child) {
           print("Only thos widget will build");
           return  Text(value.count.toString(), style: TextStyle(fontSize: 50));
         }),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
