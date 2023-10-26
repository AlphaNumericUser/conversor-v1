import 'package:conversor/Entities/fuerza.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fuerza_provider.g.dart';

@riverpod
class FuerzaProvider extends _$FuerzaProvider {
  @override
  List<Fuerza> build() {
    return [
      Fuerza(nombre: 'N', ratio: 1),
      Fuerza(nombre: 'kN', ratio: 0.001),
      Fuerza(nombre: 'MN', ratio: 0.000001),
      Fuerza(nombre: 'dyn', ratio: 100000),
      Fuerza(nombre: 'kgf', ratio: 0.101972),
      Fuerza(nombre: 'lbf', ratio: 0.224809),
      Fuerza(nombre: 'gf', ratio: 101.9716213),
    ];
  }

  double convertir(double valor, Fuerza fuerzaEntrada, Fuerza fuerzaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / fuerzaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * fuerzaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class FuerzaEntrada extends _$FuerzaEntrada {

  @override
  Fuerza build() {
    return Fuerza();
  }

  void actualizarValor( Fuerza valor ){
    state = valor;
  }

}

@riverpod
class FuerzaSalida extends _$FuerzaSalida {

  @override
  Fuerza build() {
    return Fuerza();
  }

  void actualizarValor( Fuerza valor ){
    state = valor;
  }

}

@riverpod
class FuerzaValorNumerico extends _$FuerzaValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class FuerzaValorOutput extends _$FuerzaValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class FuerzaController extends _$FuerzaController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

