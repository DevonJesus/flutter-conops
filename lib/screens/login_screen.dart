import 'package:conops_app/providers/login_form_providers.dart';
import 'package:conops_app/services/services.dart';
import 'package:conops_app/ui/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.cyan[700],
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
           
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image.asset('assets/trio.png',),
                  const SizedBox(
                    height: 25,
                  ),

                  ChangeNotifierProvider(
                    create: (_) => LoginFormProvider(),
                    child: const LoginForm(),

                  ),
                  
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 30,
                  ),
                  
                ],
              
            ),
          ),
        ),
      ),
    );
  }
}


class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,       
            decoration: DesingInputDecoration.authInputDecoration(
              labelText: 'Ingresa DNI',
              labelColor: Colors.white,
              icono: Icons.assignment_ind
            ),
            validator: (value) {
              return (value != null && value.length >=7)
                      ? null
                      : 'Los valores puestos no son correctos';
            },
            onChanged: (value) => loginForm.dni = value,
          ),
                  const SizedBox(
                    height: 30,
                  ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: DesingInputDecoration.authInputDecoration(
              labelText: 'Contraseña',
              labelColor: Colors.white,
              icono: Icons.password_sharp
            ),
            validator: (value) {
              return (value != null && value.length >=6)
                      ? null
                      : 'Los valores puestos no son correctos';
            },

            onChanged: (value)=> loginForm.password = value,
          ),
                  
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: MaterialButton(
                      onPressed: loginForm.estaCargando ? null : () async {
                        //Para quitar el teclado virtual
                        FocusScope.of(context).unfocus();
                        //
                        final authService = Provider.of<AuthService>(context, listen: false);
                        if(!loginForm.esValidoFormulario())return;

                        loginForm.estaCargando = true;

                        final String? errorMsj = await authService.login(loginForm.dni, loginForm.password);

                        if(errorMsj == null){
                            Navigator.pushReplacementNamed(context, 'home');
                          }else{
                            print(errorMsj);
                             loginForm.estaCargando = false;
                          }
                       

                        
                      },
                      color: Colors.lightGreen,
                      child: Text(
                        loginForm.estaCargando 
                        ? 'Espera' 
                        : 'LOGIN',
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
        ],
      )
      );
  }
}