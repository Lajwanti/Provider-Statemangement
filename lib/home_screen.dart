import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  int x = 0;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar:AppBar(
        title: Text("Provider Tutorial"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(x.toString(), style: const TextStyle(fontSize: 50)),
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
