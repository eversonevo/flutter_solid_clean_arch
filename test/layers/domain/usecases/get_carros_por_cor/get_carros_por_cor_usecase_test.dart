import 'package:flutter_solid_clean_arch/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:flutter_solid_clean_arch/layers/data/repositories/get_carros_por_cor_imp.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';


main(){
  test('Deve retornar uma instancia de carro quando passado qualquer cor', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDatasourceImp()));

    var result = useCase('azul');

    //expect(result, isInstanceOf<CarroEntity>());

    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uma instancia de carro de 4 portas quando vermelho', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDatasourceImp()));

    var result = useCase('vermelho');

    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect.qtdPortas, 4);


    //expect(result.qtdPortas, 4);
  });


  test('Deve retornar uma instancia de carro de 2 portas excet cor vermelho', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(GetCarroPorCorLocalDatasourceImp()));

    var result = useCase('verde');
    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect.qtdPortas, 2);

    //
    //expect(result.qtdPortas, 2);
  });

}