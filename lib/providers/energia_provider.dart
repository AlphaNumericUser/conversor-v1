import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:conversor/Entities/energia.dart';

part 'energia_provider.g.dart';

@riverpod
class EnergiaProvider extends _$EnergiaProvider {
  @override
  List<Energia> build() {
    return [
      Energia(nombre: 'J', ratio: 1),
      Energia(nombre: 'kJ', ratio: 0.001),
      Energia(nombre: 'MJ', ratio: 0.000001),
      Energia(nombre: 'GJ', ratio: 0.000000001),
      Energia(nombre: 'cal', ratio: 0.239006),
      Energia(nombre: 'kcal', ratio: 0.000239006),
      Energia(nombre: 'Wh', ratio: 0.000277778),
      Energia(nombre: 'kWh', ratio: 0.000000278),
      Energia(nombre: 'MWh', ratio: 0.000000000278),
    ];
  }

  double convertir(double valor, Energia energiaEntrada, Energia energiaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / energiaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * energiaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class EnergiaEntrada extends _$EnergiaEntrada {

  @override
  Energia build() {
    return Energia();
  }

  void actualizarValor( Energia valor ){
    state = valor;
  }

}

@riverpod
class EnergiaSalida extends _$EnergiaSalida {

  @override
  Energia build() {
    return Energia();
  }

  void actualizarValor( Energia valor ){
    state = valor;
  }

}

@riverpod
class EnergiaValorNumerico extends _$EnergiaValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class EnergiaValorOutput extends _$EnergiaValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class EnergiaController extends _$EnergiaController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

