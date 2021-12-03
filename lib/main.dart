import 'package:disney_app/pages/home_page/disney_vm.dart';
import 'package:disney_app/util/my_app_routers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<DisneyVM>(create: (_) => DisneyVM()),

    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo[200],
            titleTextStyle: const TextStyle(fontFamily: 'DisneyFont',fontSize: 33)),
      ),
      initialRoute: "/",
      onGenerateRoute: MyAppRouters.onGenerateRoute,
    );
  }
}
