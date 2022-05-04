
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';


// importar packages dartz: e get_it:


class CarroController {
  
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;
  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUsecase,
  ){
    getCarroPorCor('vermelho');
  }

  late CarroEntity carro;

  /*getCarroPorCor(String cor){
    carro = _getCarrosPorCorUseCase(cor);
  }*/

   getCarroPorCor(String cor){
    var result = _getCarrosPorCorUseCase(cor);
    result.fold(
      (error) => print(error.toString()), 
      (success) => carro = success);
  }

  salvarCarroFavorito(CarroEntity carro)async{
    await _salvarCarroFavoritoUsecase(carro);
  }

} 
