import 'package:conops_app/constants/constants.dart';
import 'package:conops_app/models/models.dart';
import 'package:conops_app/widgets/widget.dart';
import 'package:flutter/material.dart';


class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final ViajeElement viaje = ModalRoute.of(context)!.settings.arguments as ViajeElement;
    print(viaje.numeroViaje);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        title:const Text('Detalle del viaje'),
      ),
      body: Stack(
        children: [
          _fondo(),
          SingleChildScrollView(
            child: Column(
              children: [
                // appBar(context),
                name(viaje),
                cardFloro(),
                checkButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fondo(){
    final boxTop = Container(
      height: 240,
      width: double.infinity,
      // color: colorPrimario,
    );

    final circulo1 = Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: colorCirculo.withOpacity(0.3)
      ),
    );

    final circulo2 = Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: colorCirculo.withOpacity(0.3)
      ),
    );

    return Stack(
      children: [
        boxTop,
        Positioned(
          left: -50.0,
          top: -65.0,
          child: circulo1),
        Positioned(
          right: -25.0,
          top: -48.0,
          child: circulo2)
        
      ],
    );
  }
}