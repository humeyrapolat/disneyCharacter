import 'package:disney_app/model/character.dart';
import 'package:disney_app/pages/detail_page/disney_detail_vm.dart';
import 'package:disney_app/pages/home_page/disney_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class DisneyDetailPage extends StatelessWidget {
  const DisneyDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character? comingChar = context.read<DisneyDetailVM>().comingCharacter;

    List<String> tvShowList = comingChar!.tvShows!;
    List<String> gameVideoList = comingChar.videoGames!;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<DisneyVM>().controlFavorites(comingChar!);
              },
              icon: Icon(context.watch<DisneyVM>().isFav(comingChar!)
                  ? (Icons.favorite)
                  : (Icons.favorite_border)))
        ],
        title: Text("Disney Character"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Card(
            margin: const EdgeInsets.all(5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            color: Colors.deepPurple[50],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(comingChar!.imageUrl!,
                        width: 200, height: 200, fit: BoxFit.fill),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(comingChar!.name!,
                      style: const TextStyle(
                          fontSize: 40, fontFamily: 'DisneyFont'))
                ],
              ),
            ),
          ),
          Container(
            height: 120,
            child: PageView(scrollDirection: Axis.horizontal, children: [
              if (tvShowList.isNotEmpty)
                Card(
                  margin: const EdgeInsets.all(15),
                  shadowColor: Colors.indigo[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Tiana's Tv Shows :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: tvShowList.length ?? 0,
                          itemBuilder: (c, i) {
                            return Text(tvShowList[i],
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              if (gameVideoList.isNotEmpty)
                Card(
                  margin: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tiana's Game Video's :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: gameVideoList.map((e) => Text(e)).toList(),
                      )
                    ],
                  ),
                )
            ]),
          )
        ],
      ),
    );
  }
}
