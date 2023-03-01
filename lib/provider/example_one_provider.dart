import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier{
   double _value = 1.0;

   double get vlaue => _value;

   void setValue(double val){
      _value = val;
      notifyListeners();
   }
}