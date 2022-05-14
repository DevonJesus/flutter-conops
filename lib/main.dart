
import 'package:conops_app/screens/screens.dart';
import 'package:conops_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp( const AppState());


class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => ViajesService(),)
      ],
      child:const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'check',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
        'detalle': (_) => const InicioScreen(),
        'check': (_) => const CheckAuthScreen()
      },
    );
  }
}