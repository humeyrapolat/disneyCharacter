
import 'package:disney_app/pages/Favorites/disney_fav.dart';
import 'package:disney_app/pages/detail_page/disney_detail_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/home_page/disney_view.dart';
import '../pages/detail_page/disney_detail_view.dart';

import 'package:provider/provider.dart';
extension RouteSettingsEx on RouteSettings {
  T? routeArgs<T>() {
    return arguments as T?;
  }
}
class MyAppRouters{
  static Route onGenerateRoute(RouteSettings routeSettings) {
    bool fullscreenDialog = false;
    late WidgetBuilder widgetBuilder;

    switch (routeSettings.name) {
      case "/":
        widgetBuilder = (_) => const DisneyPage();
        break;
      case "/disneyFavorites":
        widgetBuilder = (_) =>  const DisneyFavorite();
        break;
      case "/disneyDetail":
        widgetBuilder = (_) => ChangeNotifierProvider(
          create: (_)=> DisneyDetailVM(routeSettings.routeArgs()),
          child: DisneyDetailPage( )
        ) ;
        break;
      default:
        fullscreenDialog = true;
        widgetBuilder = (_) => Container();
    }
    return MaterialPageRoute(
        builder: widgetBuilder,
        settings: routeSettings,
        fullscreenDialog: fullscreenDialog);
  }
}