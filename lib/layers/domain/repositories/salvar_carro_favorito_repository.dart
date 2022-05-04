import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository{
  //Future<bool> call (CarroEntity carroEntity);

  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}