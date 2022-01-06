import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'package:busca_cep/binding.dart';

void main(){
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    initialBinding: HomeBinding(),
    getPages: [
      GetPage(name: '/home', page:() => const Home(), binding: HomeBinding())
    ],
  ));
}