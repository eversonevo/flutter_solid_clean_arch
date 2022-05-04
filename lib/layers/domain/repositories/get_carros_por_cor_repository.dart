import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository{
  // método caleibol - não precisa usar .get nas chamadas
  //CarroEntity call(String cor);

  Either<Exception, CarroEntity> call(String cor);
}