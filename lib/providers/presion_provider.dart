import 'package:conversor/Entities/presion.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'presion_provider.g.dart';

@riverpod
class PresionProvider extends _$PresionProvider {
  @override
  List<Presion> build() {
    return [
      Presion(nombre: 'Pa', ratio: 1),
      Presion(nombre: 'kPa', ratio: 0.001),
      Presion(nombre: 'MPa', ratio: 0.000001),
      Presion(nombre: 'bar', ratio: 0.00001),
      Presion(nombre: 'mmHg', ratio: 0.00750062),
      Presion(nombre: 'atm', ratio: 0.00000986923),
      Presion(nombre: 'psi', ratio: 0.00014503773773375),
    ];
  }

  double convertir(double valor, Presion presionEntrada, Presion presionSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / presionEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * presionSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class PresionEntrada extends _$PresionEntrada {

  @override
  Presion build() {
    return Presion();
  }

  void actualizarValor( Presion valor ){
    state = valor;
  }

}

@riverpod
class PresionSalida extends _$PresionSalida {

  @override
  Presion build() {
    return Presion();
  }

  void actualizarValor( Presion valor ){
    state = valor;
  }

}

@riverpod
class PresionValorNumerico extends _$PresionValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PresionValorOutput extends _$PresionValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class PresionController extends _$PresionController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

