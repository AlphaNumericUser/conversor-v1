import 'package:conversor/Entities/time.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_provider.g.dart';

@riverpod
class TiempoProvider extends _$TiempoProvider {
  @override
  List<Tiempo> build() {
    return [
      Tiempo(nombre: 'seg', ratio: 1),
      Tiempo(nombre: 'mili', ratio: 1000),
      Tiempo(nombre: 'µs', ratio: 1000000),
      Tiempo(nombre: 'nano', ratio: 1000000000),
      Tiempo(nombre: 'min', ratio: 0.0166666667),
      Tiempo(nombre: 'hr', ratio: 0.0002777778),
      Tiempo(nombre: 'day', ratio: 0.0000115741),
      Tiempo(nombre: 'week', ratio: 0.0000016534),
    ];
  }

  double convertir(double valor, Tiempo tiempoEntrada, Tiempo tiempoSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / tiempoEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * tiempoSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class TiempoEntrada extends _$TiempoEntrada {

  @override
  Tiempo build() {
    return Tiempo();
  }

  void actualizarValor( Tiempo valor ){
    state = valor;
  }

}

@riverpod
class TiempoSalida extends _$TiempoSalida {

  @override
  Tiempo build() {
    return Tiempo();
  }

  void actualizarValor( Tiempo valor ){
    state = valor;
  }

}

@riverpod
class TiempoValorNumerico extends _$TiempoValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class TiempoValorOutput extends _$TiempoValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class TiempoController extends _$TiempoController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

