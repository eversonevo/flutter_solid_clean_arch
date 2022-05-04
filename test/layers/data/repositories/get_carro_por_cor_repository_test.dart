import 'package:flutter_solid_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_solid_clean_arch/layers/data/datasources/local/get_carro_por_cor_local_datasource_imp.dart';
import 'package:flutter_solid_clean_arch/layers/data/repositories/get_carros_por_cor_imp.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';



main(){

  GetCarrosPorCorDataSource dataSource = GetCarroPorCorLocalDatasourceImp();
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp(dataSource);
  test('Devolva um carro, independente da cor', (){

    var result = repository('qualquer');

    expect(result, isNotNull);

  });
}