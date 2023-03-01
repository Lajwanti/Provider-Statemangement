import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({Key? key}) : super(key: key);

  @override
  _StatefullWidgetState createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {

   int count = 0;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(count.toString(), style: const TextStyle(fontSize: 50)),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count);
          setState(() {

          });

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
