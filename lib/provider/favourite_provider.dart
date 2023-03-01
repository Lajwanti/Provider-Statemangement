import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> selectedItem = [];

  List<int> get _selectedItem => selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    _selectedItem.remove(value);
    notifyListeners();
  }
}