import 'package:busca_cep/binding.dart';
import 'package:busca_cep/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    initialRoute: '/home',
    initialBinding: HomeBinding(),
    getPages: [
      GetPage(name: '/home', page: () => const HomePage(), binding: HomeBinding() )
    ],
  ));
}