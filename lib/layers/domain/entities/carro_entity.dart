class CarroEntity {

  String placa;
  int qtdPortas;
  double valor;
  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  // quando a entidade depende apenas de valores dela
  double get valorReal{
    return valor * qtdPortas;
  }

  setLogicaX(){
    if (valorReal > 10000.00){
      // ignore: unnecessary_statements
      valor *= 2;
    }
  }
  

}
