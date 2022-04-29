import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase{
  // método caleibol - não precisa usar .get nas chamadas
  CarroEntity call(String cor);
}