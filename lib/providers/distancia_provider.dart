import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Entities/distancia.dart';

part 'distancia_provider.g.dart';

@riverpod
class DistanciaProvider extends _$DistanciaProvider {
  @override
  List<Distancia> build() {
    return [
      Distancia(nombre: 'm', ratio: 1),
      Distancia(nombre: 'cm', ratio: 100),
      Distancia(nombre: 'mm', ratio: 1000),
      Distancia(nombre: 'km', ratio: 0.001),
    ];
  }

  double convertir(double valor, Distancia distanciaEntrada, Distancia distanciaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / distanciaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * distanciaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class DistanciaEntrada extends _$DistanciaEntrada {

  @override
  Distancia build() {
    return Distancia();
  }

  void actualizarValor( Distancia valor ){
    state = valor;
  }

}

@riverpod
class DistanciaSalida extends _$DistanciaSalida {

  @override
  Distancia build() {
    return Distancia();
  }

  void actualizarValor( Distancia valor ){
    state = valor;
  }

}

@riverpod
class ValorNumerico extends _$ValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class ValorOutput extends _$ValorOutput {
  
  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}