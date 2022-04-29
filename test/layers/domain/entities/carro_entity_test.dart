import 'package:flutter_solid_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main(){

   CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 2,valor: 1000.00);


 test('Espero que a entidade não seja nula', (){
    CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 2,valor: 1000.00);

   expect(carroEntity, isNotNull);
 }) ;

  test('Espero que que a quantidade de portas seja 2', (){
    CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 2,valor: 1000.00);
   expect(carroEntity.qtdPortas, 2);
 }) ;

 test('Espero que que o valor real seja 2000', (){
    CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 2,valor: 1000.00);
    var valorEsperado = 2000.00;
   expect(carroEntity.valorReal, valorEsperado);
 }) ;

 test('Espero que o valor real seja 0', (){
    CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 0,valor: 1000.00);
    var valorEsperado = 0.00;
   expect(carroEntity.valorReal, valorEsperado);
 }) ;

 test('Espero que o valor seja 30000', (){
    CarroEntity carroEntity = CarroEntity(placa: 'abc123',qtdPortas: 2,valor: 15000.00);
    var valorEsperado = 30000.00;
    carroEntity.setLogicaX();
   expect(carroEntity.valor, valorEsperado);
 }) ;
}