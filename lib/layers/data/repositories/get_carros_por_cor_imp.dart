import 'package:dartz/dartz.dart';
import 'package:flutter_solid_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_solid_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository{

  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }

/*
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela responde um Json
    
    return _getCarrosPorCorDataSource(cor);
  }*/

} 