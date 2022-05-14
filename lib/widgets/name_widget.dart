// import 'package:conops_app/constants/constants.dart';
import 'package:conops_app/constants/constants.dart';
import 'package:conops_app/models/models.dart';
import 'package:flutter/material.dart';

Widget name (ViajeElement viaje) {

  return Container(
    width: double.infinity,
    height: 250,
    margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color:const Color(0xfff6f6f6),
      borderRadius: BorderRadius.circular(10),
      boxShadow:const [
        BoxShadow(
          color: Color.fromARGB(90, 20, 20, 20),
          blurRadius: 0.8,
          offset: Offset(9,9)
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        iconRowText( Icons.tag, 'Numero Viaje: ', viaje.numeroViaje),
            iconRowText(Icons.flag_outlined, 'Punto de Origen: ', viaje.origen),
            iconRowText(Icons.flag_outlined, 'Punto de Llegada: ', viaje.llegada),
            iconRowText(Icons.directions_boat_filled, 'Tipo de Viaje: ', viaje.tipoViaje),
            const Divider(),
            iconRowText(Icons.king_bed, 'Modelo Vehículo: ', viaje.vehiculo.modelo),
            Container(
              padding:const EdgeInsets.only(left: 15),
              child: Column(
              children: [
                iconRowText(Icons.horizontal_rule, 'Placa: ', viaje.vehiculo.placa),
            iconRowText(Icons.horizontal_rule, 'Marca: ', viaje.vehiculo.marca),
              ],
            )),
            
            iconRowText(Icons.sports_motorsports, 'Conductor: ', viaje.usuario.nombre),
            
      ],
    ),
  );


}


Widget iconRowText (IconData icono, String texto, String viaje){
  return Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    
    children: [
            Icon(icono, color: colorPrimario,),
            Text(texto, style:const  TextStyle(
              color: colorCirculo,
              fontWeight: FontWeight.bold
            ),),
            Text(viaje, style:const  TextStyle(
              color: colorTextoTitulo,
              fontWeight: FontWeight.bold
            ),)
    ],
  );
}