import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/provider/auth_provider.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Login",style: TextStyle(color: Colors.black,fontSize: 30),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),

            const SizedBox(height: 20,),


            TextFormField(
              obscureText: true,
              controller: password,
              decoration: const InputDecoration(
                hintText: "Password"
              ),
            ),
            const SizedBox(height: 50,),

            InkWell(
              onTap: (){
                authProvider.login(email.text.toString(), password.text.toString());
              },
              child: Container(

                height: 50,
                child: Center(child: authProvider.loading? CircularProgressIndicator(color: Colors.black,): Text("Login",style: TextStyle(color: Colors.black,fontSize: 20))),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
