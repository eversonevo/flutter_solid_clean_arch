import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoUsecase{
  Future<bool> call(CarroEntity carroEntity);
}