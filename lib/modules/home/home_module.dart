import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/home/home_page.dart';
import 'package:get/get.dart';

class HomeModule extends Module{
    List<GetPage> routers = [
      GetPage(name: '/home', page: () => HomePage(),)
    ];
}