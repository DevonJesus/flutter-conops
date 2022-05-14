import 'package:conops_app/constants/constants.dart';

import 'package:conops_app/widgets/appbar_widget.dart';
import 'package:conops_app/widgets/viaje_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      body: buildMain(context),
    );
  }

   navBar(Icon icono){
    return BottomNavigationBarItem(
            icon: icono,
            label: '');
  }


  buildMain(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.cyan[700],
      color: colorPrimario,
      child: ListView(
        children: [
          appBar(context),
          tituloHome(),
          sucundarioTitle(),
          buscarHome(),
          Container(
            margin:const EdgeInsets.only(top: 20),
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), 
            ),
            child: Container(
              margin:const EdgeInsets.only(top: 10, ),
              child: const ViajeLista(),
             
            ),
          )
        ],
      ),
    );
  }

  
  Widget tituloHome(){
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:const EdgeInsets.only(left: 30),
                child: const Text("Hola, \nJesus Mendoza",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
              ),

              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(25)
                ),
              )
            ],
          );
  }

  Widget sucundarioTitle(){
    return Container(
            margin: const EdgeInsets.only(top: 20, left: 30),
            child: const Text("A donde Vas, ahora?", 
              style: TextStyle(
                fontSize: 17,
                color: Colors.white
              ),),
          );
  }

  Widget buscarHome(){
    return Container(
            margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
            height: 50,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
            child: Row(
              children: [
                const SizedBox(width: 10,),
                const Icon(Icons.search),
                 Text("Buscar", style: TextStyle(fontSize: 17, color: Colors.grey[600]),)
              ],
            ),
          );
  }
}