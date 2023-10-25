import 'package:conversor/Entities/volumen.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'volumen_provider.g.dart';

@riverpod
class VolumenProvider extends _$VolumenProvider {
  @override
  List<Volumen> build() {
    return [
      Volumen(nombre: 'L', ratio: 1),
      Volumen(nombre: 'mL', ratio: 1000),
      Volumen(nombre: 'cm³', ratio: 1000),
      Volumen(nombre: 'm³', ratio: 0.001),
      Volumen(nombre: 'ft³', ratio: 0.035315),
      Volumen(nombre: 'in³', ratio: 61.0237),
      Volumen(nombre: 'gal US', ratio: 0.264172),
      Volumen(nombre: 'gal UK', ratio: 0.219969),
    ];
  }

  double convertir(double valor, Volumen volumenEntrada, Volumen volumenSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / volumenEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * volumenSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class VolumenEntrada extends _$VolumenEntrada {

  @override
  Volumen build() {
    return Volumen();
  }

  void actualizarValor( Volumen valor ){
    state = valor;
  }

}

@riverpod
class VolumenSalida extends _$VolumenSalida {

  @override
  Volumen build() {
    return Volumen();
  }

  void actualizarValor( Volumen valor ){
    state = valor;
  }

}

@riverpod
class VolumenValorNumerico extends _$VolumenValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class VolumenValorOutput extends _$VolumenValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class VolumenController extends _$VolumenController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

