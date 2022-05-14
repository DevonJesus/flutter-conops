
import 'package:conops_app/models/models.dart';
import 'package:conops_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ViajeLista extends StatelessWidget {
  const ViajeLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final viajesService = Provider.of<ViajesService>(context);
    print(viajesService.listaviajes);
    return ListView.builder(
      itemCount: viajesService.listaviajes.length,
      itemBuilder:(BuildContext context ,int index) { 
        final viaje = viajesService.listaviajes[index];
        print(viaje);
        return cardViaje(context,viaje);
    });
  }


  
cardViaje(BuildContext context, ViajeElement viaje){
  return Card(
            margin: const EdgeInsets.all(20),
            color: Colors.blueGrey[50],
            borderOnForeground: true,
            semanticContainer: true,
            elevation: 10,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  children: [
                   textoInicio(viaje.numeroViaje),
                   Container(
                     width: 2,
                     height: 80,
                     color: Colors.grey,
                     
                   ),

                    Container(
                     
                     width: 180,
                     height: 80,
                    //  color: Colors.grey,
                    padding: const EdgeInsets.only(left: 25),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         
                         Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                              Icon(Icons.location_on, color: Colors.lightBlue[400],),
                                Text(viaje.origen, style:const TextStyle(fontWeight: FontWeight.bold),),
                              
                           ],
                         ),
                         Container(width: 1, height: 30, color:  Colors.lightBlue[300], margin: const EdgeInsets.only(left: 11),),     
                          Row(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                              Icon(Icons.location_on, color: Colors.lightBlue[400],),
                                Text(viaje.llegada, style: const TextStyle(fontWeight: FontWeight.bold),),
                              
                           ],
                         ),
                       ]
                     ),
                   ),
                  ],
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    // boton('Mas detalles', context, viaje),
                    // boton('Agregar pasajeros', context, viaje),

                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, 'detalle', arguments: viaje);
                      }, child: const Text('Mas detalles')),
                     ElevatedButton(onPressed: (){
                      
                      }, child: const Text('Agregar Pasajeros'))
                  ],
                )
                
              ],
            )
          );
}

// boton (String texto,  BuildContext context, ViajeElement viaje , Function onPres){
//   return ElevatedButton(onPressed: (){
//     Navigator.pushNamed(context, 'detalle', arguments: viaje);
//   }, child: Text(texto));
// }

textoInicio (String numViaje){
  return  SizedBox (
    // color: Colors.green,
    width: 160,
    child: Column(
                children: [
                   ListTile(
                    title:const Text('Nro de Viaje', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),),
                    subtitle: Text(numViaje),
                  ),
                  
                ],
              ),
  );
}
}