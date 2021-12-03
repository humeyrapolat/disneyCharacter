import 'package:disney_app/model/character.dart';
import 'package:disney_app/model/disney_character_list.dart';
import 'package:disney_app/pages/home_page/disney_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DisneyPage extends StatelessWidget {
  const DisneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(actions: [IconButton(onPressed: () {
        Navigator.pushNamed(context, "/disneyFavorites");
      }, icon: const Icon(Icons.favorite_border))],
        title: const Text(" Walt Disney"),
      ),
      body : context.watch<DisneyVM>().characterList == null ? Center(child: Image.asset("assets/disney.gif")):
      GridView.builder(
          itemCount: context.watch<DisneyVM>().characterList?.data?.length ?? 0,
          itemBuilder: (c, i) {
            Character item = context.watch<DisneyVM>().characterList!.data![i];
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/disneyDetail", arguments: item);
              },
              child: Card(
                shadowColor: Colors.indigo[200],
                color: Colors.white,
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.network(item.imageUrl!,
                        width: 175,
                        height: 175,fit: BoxFit.fill,
                      ),
                    ),
                    Flexible(
                      child: Text(item.name!.toString(),overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 22,
                          )),
                    )
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 6 / 7.5)
      ),
    );
  }
}
