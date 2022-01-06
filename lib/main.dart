import 'package:busca_cep/binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

void main(){
  runApp( GetMaterialApp(
    initialRoute: '/home',
    initialBinding: HomeBinding(),
    getPages: [
      GetPage(name: '/home', page:() => const Home(), binding: HomeBinding())
    ],
  ));
}