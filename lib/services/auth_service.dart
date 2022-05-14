import 'dart:convert';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {

  // final String _baseUrl = '//10.0.2.2:8080';
  final storage = const FlutterSecureStorage();

  Future<String?> login (String dni, String password) async{
    
    final Map<String, dynamic> authData = {
      'dni': dni,
      'password': password
    };

    final url = Uri.parse('http://10.0.2.2:8080/api/auth/login');
    final resp = await http.post(url, body: json.encode(authData),headers: {
        HttpHeaders.contentTypeHeader: 'application/json'
      });
    final Map<String, dynamic> decodeResp = json.decode(resp.body);

    if(decodeResp.containsKey('token')){
      await storage.write(key: 'token', value: decodeResp['token']);
      print(decodeResp['usuario']);
      return null;
    }else{
      return decodeResp['msj'];
    }

    

  }

  Future logout()async{
      await storage.delete(key: 'token');
    return;   
  }

  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }

}