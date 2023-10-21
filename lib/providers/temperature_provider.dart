import 'package:conversor/Entities/temperature.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Entities/distancia.dart';

part 'temperature_provider.g.dart';

@riverpod
class TemperaturaProvider extends _$TemperaturaProvider {
  @override
  List<Temperature> build() {
    return [
      Temperature(nombre: '°C', ratio: 1),
      Temperature(nombre: '°F', ratio: 33.8),
      Temperature(nombre: '°K', ratio: 274.15),
    ];
  }

  double convertir(double valor, Temperature distanciaEntrada, Temperature distanciaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / distanciaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * distanciaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class TemperaturaEntrada extends _$TemperaturaEntrada {

  @override
  Temperature build() {
    return Temperature();
  }

  void actualizarValor( Temperature valor ){
    state = valor;
  }

}

@riverpod
class TemperaturaSalida extends _$TemperaturaSalida {

  @override
  Temperature build() {
    return Temperature();
  }

  void actualizarValor( Temperature valor ){
    state = valor;
  }

}

@riverpod
class TemperaturaValorNumerico extends _$TemperaturaValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class TemperaturaValorOutput extends _$TemperaturaValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class TemperaturaController extends _$TemperaturaController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

