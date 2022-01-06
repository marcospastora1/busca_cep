import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  var resultado = 'Digite o Cep'.obs;

  final txtcep = TextEditingController();

  consultaCep() async {
    //pegando o cep digitado no campo de texto
    String cep = txtcep.text;

    //configurando url
    String url = 'https://viacep.com.br/ws/$cep/json/';

    http.Response response = await http.get(Uri.parse(url));

    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno['logradouro'];
    String cidade = retorno['localidade'];
    String bairro = retorno['bairro'];
    String estado = retorno['uf'];

    resultado.value = '$logradouro, bairro $bairro, $cidade, $estado';
  }
}
