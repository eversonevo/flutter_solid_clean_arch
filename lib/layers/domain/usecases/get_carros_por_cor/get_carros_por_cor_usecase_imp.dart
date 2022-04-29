import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp extends GetCarrosPorCorUseCase{
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')){
      return CarroEntity(placa: 'ABC-1234', qtdPortas: 4, valor: 50000.00);
    }else{
      return CarroEntity(placa: 'QWE-1234', qtdPortas: 2, valor: 20000.00);
    }
  }

}