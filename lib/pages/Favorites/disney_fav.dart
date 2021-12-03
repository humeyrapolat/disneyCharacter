import 'package:disney_app/model/character.dart';
import 'package:disney_app/pages/detail_page/disney_detail_vm.dart';
import 'package:disney_app/pages/home_page/disney_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class DisneyFavorite extends StatelessWidget {
  const DisneyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: context.watch<DisneyVM>().favList?.length ?? 0,
        itemBuilder: (c,i){
          Character? favChar = context.read<DisneyVM>().favList[i];
          return ListTile( title: Text(favChar.name!,style: TextStyle(fontSize: 20),),trailing:  IconButton(
              onPressed: () {
                context.read<DisneyVM>().controlFavorites(favChar!);
              },
              icon: Icon(context.watch<DisneyVM>().isFav(favChar!)
                  ? (Icons.favorite)
                  : (Icons.favorite_border))),);
      },
      ),
    );
  }

}