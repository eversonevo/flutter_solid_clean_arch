import 'package:flutter/material.dart';
import 'package:flutter_solid_clean_arch/core/inject/inject.dart';
import 'package:flutter_solid_clean_arch/layers/presentation/ui/pages/carro_page.dart';

main(){
  Inject.init();
  runApp(
    MaterialApp(
    home: CarroPage(),
  )
  );
}


//  PAREI AULA 8
//https://www.youtube.com/watch?v=hPm4oEBlwIM&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=8