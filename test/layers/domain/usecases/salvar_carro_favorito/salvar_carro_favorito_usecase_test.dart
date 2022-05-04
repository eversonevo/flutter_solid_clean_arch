import 'package:flutter_solid_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';


main(){

  test('Espero que salve o carro com sucesso!', ()async{
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: '0000', qtdPortas: 2, valor: 2000.00);
    
    var result = await useCase(carro);

    //expect(result, true);

    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, true);


  });

    test('Espero que não salve o carro quando valor for menor ou igual a 0!', ()async{
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: '0000', qtdPortas: 2, valor: 0.00);
    
    var result = await useCase(carro);

    //expect(result, false);

    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, false);


  });

}
