import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource{
  //CarroDto call (String cor);

  Either<Exception, CarroDto> call(String cor);
}