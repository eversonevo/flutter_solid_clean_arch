
import 'package:flutter_solid_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_solid_clean_arch/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:flutter_solid_clean_arch/layers/data/repositories/get_carros_por_cor_imp.dart';
import 'package:flutter_solid_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:flutter_solid_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_solid_clean_arch/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  
  static void init(){
    GetIt getIt = GetIt.instance;

    // datasource, repository, usecases, controllers    ordem de chamadas

    //datasource
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(() => GetCarroPorCorLocalDatasourceImp());

    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(() => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(() => SalvarCarroFavoritoRepositoryImp());


    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(() => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(() => SalvarCarroFavoritoUseCaseImp(getIt()));

    //controllers   singlenton mantém (usado carrinho compra)  factory sempre renova
    getIt.registerFactory(() => CarroController(getIt(),getIt()));



  }
}