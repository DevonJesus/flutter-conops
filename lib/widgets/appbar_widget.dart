import 'package:conops_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:conops_app/services/services.dart';
import 'package:provider/provider.dart';
Widget appBar(BuildContext context){
  final authService = Provider.of<AuthService>(context, listen: false);

  final appBar = Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(colorPrimario),
          ),
          child:const Icon(Icons.cached, color: Colors.white,)
          ),
        ElevatedButton(onPressed: (){
          authService.logout();
            Navigator.pushReplacementNamed(context, 'login');
        },
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(colorSecundario),
          ),
          child:const Icon(Icons.login_outlined, color: Colors.white,)
          )
      ],
    ),
  );
  return SafeArea(child: appBar);
}

