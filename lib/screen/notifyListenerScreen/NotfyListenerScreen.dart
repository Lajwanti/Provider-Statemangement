import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
   NotifyListenerScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _valueNotifier = ValueNotifier<int>(0);
   ValueNotifier<bool> _toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotifyListenerScreen"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ValueListenableBuilder(
             valueListenable: _toggle,
             builder: (context, value, child) {
               return  Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: TextFormField(
                   obscureText: _toggle.value,
                   decoration: InputDecoration(
                       hintText: "Password",
                       suffixIcon: InkWell(
                           onTap:(){
                             _toggle.value = !_toggle.value;

                           },

                           child: Icon(_toggle.value ? Icons.visibility_off:Icons.visibility ))
                   ),
                 ),
               );
             }),

          Center(
            child: ValueListenableBuilder(
              valueListenable:_valueNotifier ,
              builder: (context, value, child){
                return Text(_valueNotifier.value.toString(),style: TextStyle(fontSize: 50),);
              },
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _valueNotifier.value++;
          print(_valueNotifier.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
