import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository{
  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async{

    try{
      //quando sucesso
        return Right(carroEntity.valor > 0);
    }catch (e){
      //quando erro
        return Left(Exception('repository error'));
    }
    
  }
  
  /*
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }*/

} 