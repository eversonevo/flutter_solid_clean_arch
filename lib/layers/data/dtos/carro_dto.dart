

import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';


// dto faz toJson  e fromMap   esse tem que estar igual a API
// significa que o carroDto também é o CarroEntity 
class CarroDto extends CarroEntity{
  String placa;
  int quantidadePortas;
  double valorFinal;
  CarroDto({
    required this.placa,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(
    valor: valorFinal,
    qtdPortas: quantidadePortas, 
    placa: placa);

    // envia para api
    Map toMap(){
      return {
         'placa':this.placa,
         'quantidadePortas':this.quantidadePortas,
         'valorFinal':this.valorFinal
      };

    }

    //retorna de api
    static CarroDto fromMap(Map map){
      return CarroDto(
        placa: map['placa'], 
        quantidadePortas: map['quantidadePortas'], 
        valorFinal: map['valorFinal']);

    }


}
