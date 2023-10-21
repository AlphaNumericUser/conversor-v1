import 'package:conversor/Entities/weight.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weight_provider.g.dart';

@riverpod
class WeightProvider extends _$WeightProvider {

  @override
  List<Weight> build() {
    return [
      Weight(nombre: 'gr', ratio: 1),
      Weight(nombre: 'kg', ratio: 0.001),
      Weight(nombre: 'mg', ratio: 1000),
      Weight(nombre: 'µg', ratio: 1000000),
      Weight(nombre: 'ton', ratio: 0.000001),
      Weight(nombre: 'lb', ratio: 0.00220462),
      Weight(nombre: 'oz', ratio: 0.03527396),
    ];
  }

  double convertir(double valor, Weight pesoEntrada, Weight pesoSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / pesoEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * pesoSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class PesoEntrada extends _$PesoEntrada {

  @override
  Weight build() {
    return Weight();
  }

  void actualizarValor( Weight valor ){
    state = valor;
  }

}

@riverpod
class PesoSalida extends _$PesoSalida {

  @override
  Weight build() {
    return Weight();
  }

  void actualizarValor( Weight valor ){
    state = valor;
  }

}

@riverpod
class PesoValorNumerico extends _$PesoValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PesoValorOutput extends _$PesoValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PesoController extends _$PesoController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}