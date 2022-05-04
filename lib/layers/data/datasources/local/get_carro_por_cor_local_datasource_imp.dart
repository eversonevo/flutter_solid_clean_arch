
import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_solid_clean_arch/layers/data/dtos/carro_dto.dart';

class GetCarroPorCorLocalDatasourceImp extends GetCarrosPorCorDataSource {

  final jsonVermelho = {
      'placa':'abc3456',
      'quantidadePortas':4,
      'valorFinal':5000.00,
    };
     final jsonN = {
      'placa':'qwe3456',
      'quantidadePortas':2,
      'valorFinal':2000.00,
    };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try{
        if (cor.contains('vermelho')){
          return Right(CarroDto.fromMap(jsonVermelho));
        }
        return Right(CarroDto.fromMap(jsonN));
    }catch (e){
        return Left(Exception('Erro em data source'));
    }
  }
    

/*
  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')){
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonN);
  }*/

  
  
  
}