import 'package:flutter/material.dart';
import 'package:flutter_solid_clean_arch/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {

  CarroPage({ Key? key }) : super(key: key);

  CarroController controller = GetIt.I.get<CarroController>();

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Clean arch'),),
           body: Container(
             padding: EdgeInsets.all(24),
             child: Text(controller.carro.placa),
           ),
       );
  }
}