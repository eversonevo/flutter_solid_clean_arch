import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp extends SalvarCarroFavoritoRepository{
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0; // retorna true ou false diretamente
  }

}

main(){

  test('Espero que salve o carro com sucesso!', ()async{
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: '0000', qtdPortas: 2, valor: 1);
    
    var result = await useCase(carro);

    expect(result, true);


  });

    test('Espero que não salve o carro quando valor for menor ou igual a 0!', ()async{
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: '0000', qtdPortas: 2, valor: 0);
    
    var result = await useCase(carro);

    expect(result, false);


  });

}
