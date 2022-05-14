import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey =  GlobalKey<FormState>();

  String dni = '';
  String password = '';


  bool _estaCargando = false;
  bool get estaCargando => _estaCargando;

  set estaCargando(bool value){
    _estaCargando = value;
    notifyListeners();
  }


  bool esValidoFormulario(){
    print(formKey.currentState?.validate());
    print('$dni - $password');
    return formKey.currentState?.validate() ?? false;
  }

}