import 'package:busca_cep/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Consultando um CEP via Api'),
          backgroundColor: Colors.blue),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: controller.txtcep,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Digite o CEP'),
              style: const TextStyle(fontSize: 20),
            ),
            Obx(
              () => Text(
                'Resultado:\n${controller.resultado.value}',
                style: const TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: controller.consultaCep,
              child: const Text(
                'Consultar',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}