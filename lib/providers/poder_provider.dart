import 'package:conversor/Entities/poder.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poder_provider.g.dart';

@riverpod
class PoderProvider extends _$PoderProvider {
  @override
  List<Poder> build() {
    return [
      Poder(nombre: 'W', ratio: 1),
      Poder(nombre: 'kW', ratio: 0.001),
      Poder(nombre: 'MW', ratio: 0.000001),
      Poder(nombre: 'GW', ratio: 0.000000001),
      Poder(nombre: 'HP', ratio: 0.00134102),
      Poder(nombre: 'J/s', ratio: 1),
    ];
  }

  double convertir(double valor, Poder poderEntrada, Poder poderSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / poderEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * poderSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class PoderEntrada extends _$PoderEntrada {

  @override
  Poder build() {
    return Poder();
  }

  void actualizarValor( Poder valor ){
    state = valor;
  }

}

@riverpod
class PoderSalida extends _$PoderSalida {

  @override
  Poder build() {
    return Poder();
  }

  void actualizarValor( Poder valor ){
    state = valor;
  }

}

@riverpod
class PoderValorNumerico extends _$PoderValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PoderValorOutput extends _$PoderValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PoderController extends _$PoderController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

