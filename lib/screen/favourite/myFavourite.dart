import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemangement/provider/favourite_provider.dart';

class MyFavourite extends StatefulWidget {
  const MyFavourite({Key? key}) : super(key: key);

  @override
  _MyFavouriteState createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {
  @override
  Widget build(BuildContext context) {

   final favouriteProvider = Provider.of<FavouriteProvider>(context);

    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        //centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              child: const Icon(Icons.favorite,
                  size: 30),
              onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyFavourite()));

              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteProvider.selectedItem.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(
                    builder: (context, value, child){
                      return ListTile(
                        onTap: (){

                          if(value.selectedItem.contains(index)){
                            value.removeItem(index);

                          }
                          else{
                            value.addItem(index);
                          }


                        },
                        title: Text("Item" +index.toString()),
                        trailing: Icon(value.selectedItem.contains(index)? Icons.favorite:
                        Icons.favorite_border_outlined,

                        ),
                      );
                    },
                  );

                }),
          ),
        ],
      ),
    );
  }
}
