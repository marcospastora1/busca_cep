import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  final resultado = 'Digite o Cep'.obs;

  final controllerCep = TextEditingController();

  Future<void> consultaCep() async {
    //pegando o cep digitado no campo de texto
    final cep = controllerCep.text;

    //configurando url
    var url = 'https://viacep.com.br/ws/$cep/json/';

    http.Response response = await http.get(Uri.parse(url));
    //pedindo os dados da api com o metodo get

    Map<String, dynamic> retorno = json.decode(response.body);
    //transformando o arquivo json em um map

    final logradouro = retorno['logradouro'];
    final cidade = retorno['localidade'];
    final bairro = retorno['bairro'];
    final estado = retorno['uf'];

    resultado.value =
        'Resultado:\n$logradouro, bairro $bairro, $cidade, $estado';
  }
}
