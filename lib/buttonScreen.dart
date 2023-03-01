import 'package:flutter/material.dart';
import 'package:provider_statemangement/home_screen.dart';
import 'package:provider_statemangement/screen/Login/login_screen.dart';
import 'package:provider_statemangement/screen/count_example.dart';
import 'package:provider_statemangement/screen/example_one.dart';
import 'package:provider_statemangement/screen/favourite/favourite_screen.dart';
import 'package:provider_statemangement/screen/notifyListenerScreen/NotfyListenerScreen.dart';
import 'package:provider_statemangement/screen/themeFolder/darkTheme.dart';
import 'package:provider_statemangement/statefull_widget_screen.dart';


class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Provider Tutorial",style: TextStyle(color: Colors.black,fontSize: 30),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

                },
                child: Container(
                  height: 50,
                  child: Center(
                      child: Text("Stateless widget",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const StatefullWidget()));

                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Stateful widget",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CountExample()));

                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Counter with provider",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ExampleOneScreen()));

                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Slider with provider",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavouriteScreen()));

                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Favourite App",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const DarkThemeScreen()));


                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Light & Dark Theme",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotifyListenerScreen()));


                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("NotifyListener",style: TextStyle(color: Colors.black,fontSize: 20))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));


                },
                child: Container(

                  height: 50,
                  child: Center(child: Text("Login with RestApi using Provider",style: TextStyle(color: Colors.black,fontSize: 17))),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }
}
