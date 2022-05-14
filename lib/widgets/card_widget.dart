import 'package:conops_app/constants/constants.dart';
import 'package:conops_app/ui/input_decoration.dart';
import 'package:flutter/material.dart';




Widget cardFloro(){
  final card = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                
                children: [
                  
                  Container(
                    width: 200,
                    child: CheckboxListTile(
                    title: const Text('Ingreso'),
                    value: true, 
                    onChanged: (value){}),
                    
                  ),
                  Container(
                    width: 200,
                    child: CheckboxListTile(
                    title: const Text('Llegada'),
                    value: true, 
                    onChanged: (value){}),
                    
                  ),

                    Row(
                      children: [

                        circuloChart(),

                        const SizedBox(width: 10,),
                        
                            const Text('¡Agrega la hora de inicio y km!', style: TextStyle(
                              color: colorTextoTitulo,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),),
                            
                          
                        
                      ],
                    ),

                    const SizedBox(height: 10,),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Hora inicio:', style: TextStyle(
                          fontSize: 25,
                          color: colorTextoSecundario
                        ),),
                        SizedBox(width: 10,),
                        Container(
                          width: 120,
                          child:  TextFormField(
                              decoration: DesingInputDecoration.authInputDecoration(
                                labelText: '',
                                labelColor: Colors.black,
                                icono: Icons.schedule
                              ),
                              onChanged: (value) {},
                            ),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 15,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('KM. inicio:', style: TextStyle(
                          fontSize: 25,
                          color: colorTextoSecundario
                        ),),
                        SizedBox(width: 10,),
                        Container(
                          width: 120,
                          child:  TextFormField(
                              decoration: DesingInputDecoration.authInputDecoration(
                                labelText: '',
                                labelColor: Colors.black,
                                icono: Icons.shutter_speed
                              ),
                              onChanged: (value) {},
                            ),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 10,),

                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colorPrimario)
                      ),
                      onPressed: (){}, 
                      child: const Text('Agregar')
                    ),
                    )
                    

                   
                ],
              ),
            ),
          )

          );
     

    return card;

}

Widget checkButton(){
  final card = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                
                children: [
                  
                  
                    Row(
                      children: [

                        circuloChart(),

                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                             Text('¡Agrega la hora de inicio y km!', style: TextStyle(
                              color: colorTextoTitulo,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),),
                           
                          ],
                        )
                      ],
                    ),

                    const SizedBox(height: 10,),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Hora inicio:', style: TextStyle(
                          fontSize: 25,
                          color: colorTextoSecundario
                        ),),
                        SizedBox(width: 10,),
                        Container(
                          width: 120,
                          child:  TextFormField(
                              decoration: DesingInputDecoration.authInputDecoration(
                                labelText: '',
                                labelColor: Colors.black,
                                icono: Icons.schedule
                              ),
                              onChanged: (value) {},
                            ),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 15,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('KM. inicio:', style: TextStyle(
                          fontSize: 25,
                          color: colorTextoSecundario
                        ),),
                        SizedBox(width: 10,),
                        Container(
                          width: 120,
                          child:  TextFormField(
                              decoration: DesingInputDecoration.authInputDecoration(
                                labelText: '',
                                labelColor: Colors.black,
                                icono: Icons.shutter_speed
                              ),
                              onChanged: (value) {},
                            ),
                        )
                       
                      ],
                    ),
                    SizedBox(height: 10,),

                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colorPrimario)
                      ),
                      onPressed: (){}, 
                      child: const Text('Agregar')
                    ),
                    )
                    

                   
                ],
              ),
            ),
          )

          );
     

    return card;

}

 Widget circuloChart (){
        return 
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: colorPrimario,
                borderRadius: BorderRadius.circular(25)
              ),
           
        );
      }