import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp extends SalvarCarroFavoritoUsecase {

  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogicaX();

    return await _salvarCarroFavoritoRepository(carroEntity);
  }
  
  /*
  @override
  Future<bool> call(CarroEntity carroEntity) async {

    carroEntity.setLogicaX();

    return await _salvarCarroFavoritoRepository(carroEntity);
  }*/

  

}
