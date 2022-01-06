import 'package:busca_cep/home.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePage>(() => const HomePage());
  }
  
}