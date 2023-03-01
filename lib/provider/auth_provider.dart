import 'package:flutter/foundation.dart';

import 'package:http/http.dart';

class AuthProvider with ChangeNotifier{

  bool loading = false;
  bool get _loading => loading;

  setLoading(bool value){
    loading = value;
    notifyListeners();
  }

  void login(String email, String password)async{
    setLoading(true);



    try{
      Response response  = await post(Uri.parse("https://reqres.in/api/login"),
      body: {
        "email" : email,
        "password" : password,
      }
      );
      if(response.statusCode == 200){
        print("Successful");
        setLoading(false);
      }
      else{
        print("Unsuccessful");
        setLoading(false);

      }
    }catch(e){
      print(e.toString());
      setLoading(false);
    }

  }



}