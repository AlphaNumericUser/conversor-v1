import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Entities/distancia.dart';

part 'distancia_provider.g.dart';

@riverpod
class DistanciaProvider extends _$DistanciaProvider {
  @override
  List<Distancia> build() {
    return [
      Distancia(nombre: 'm', ratio: 1),
      Distancia(nombre: 'dm', ratio: 10),
      Distancia(nombre: 'cm', ratio: 100),
      Distancia(nombre: 'mm', ratio: 1000),
      Distancia(nombre: 'µm', ratio: 1000000),
      Distancia(nombre: 'nm', ratio: 1000000000),
      Distancia(nombre: 'km', ratio: 0.001),
      Distancia(nombre: 'Mm', ratio: 0.000001),
      Distancia(nombre: 'yd', ratio: 1.09361),
      Distancia(nombre: 'in', ratio: 39.3701),
      Distancia(nombre: 'feet', ratio: 3.28084),
      Distancia(nombre: 'mi', ratio: 0.000621371),
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
class DistanciaValorNumerico extends _$DistanciaValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class DistanciaValorOutput extends _$DistanciaValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class DistanciaController extends _$DistanciaController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

