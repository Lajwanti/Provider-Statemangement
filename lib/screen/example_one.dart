import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  _ExampleOneScreenState createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  @override
  Widget build(BuildContext context) {
    print("build");
    //final exampleProvider = Provider.of<ExampleOneProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example One"),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child) {
           return Slider(
                min: 0,
                max: 1,
                value: value.vlaue, onChanged: (val){
              value.setValue(val);


            });
          }),

          Consumer<ExampleOneProvider>(builder: (context, value, child) {
            return  Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.vlaue),
                      ),
                      child: const Center(
                        child: Text("Container1"),
                      )),
                ),
                Expanded(
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.vlaue),
                      ),
                      child:const Center(
                        child: Text("Container1"),
                      )),
                )
              ],
            );
          }),





        ],
      ),
    );
  }
}
