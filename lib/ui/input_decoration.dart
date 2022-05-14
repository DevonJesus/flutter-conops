import 'package:flutter/material.dart';


class DesingInputDecoration {

  static InputDecoration authInputDecoration({
    required  String labelText,
     Color? labelColor,
     IconData? icono

  }){
  
// assignment_ind
    return InputDecoration(
                      
                      labelText: labelText,
                      border:const OutlineInputBorder(),
                      labelStyle: TextStyle(color: labelColor), 

                      prefixIcon: Icon(icono),
                    );
  }
}