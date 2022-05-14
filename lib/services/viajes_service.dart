

import 'dart:convert';
import 'dart:io';

import 'package:conops_app/models/models.dart';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class ViajesService extends ChangeNotifier{

   List<ViajeElement> listaviajes = [];
  final  List<Viaje> viaje = [];
  final isLoading = true;

  ViajesService(){
    loadViajes();
  }

  Future loadViajes() async {
    const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiI2MjYxY2U4YzVlNGNkYzEyNDkwYTNlN2UiLCJpYXQiOjE2NTI0Nzg3NjcsImV4cCI6MTY4NDAxNDc2N30.tJHxx_abLM58iFVvjv36HxOoM8ZODALY4hIhE0CyaKY';
    final url = Uri.parse('http://10.0.2.2:8080/api/viajes/viajesPorChofer');
    
    final resp = await http.get(url, headers: {'x-token': token,
        HttpHeaders.contentTypeHeader: 'application/json',
      } );


    
    final Map<String, dynamic> viajesMap = json.decode(resp.body);
    final viajes = Viaje.fromJson(resp.body);
      // print(solicitud.reclamos[0].idUser);
    listaviajes = viajes.viajes;
    notifyListeners();
      
    print(viajes.viajes[2].vehiculo.placa);
    print(viajesMap['viajes'][2]['_id']);
    
   
}
 
    // print(viajes[0].numeroViaje);
  

}