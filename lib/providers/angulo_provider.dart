import 'package:conversor/Entities/angulo.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'angulo_provider.g.dart';

@riverpod
class AnguloProvider extends _$AnguloProvider {
  @override
  List<Angulo> build() {
    return [
      Angulo(nombre: 'grad', ratio: 1),
      Angulo(nombre: 'rad', ratio: 0.0174533),
      Angulo(nombre: "min", ratio: 60),
      Angulo(nombre: 'seg', ratio: 3600),
      Angulo(nombre: 'círculo', ratio: 0.00277778),
    ];
  }

  double convertir(double valor, Angulo anguloEntrada, Angulo anguloSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / anguloEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * anguloSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class AnguloEntrada extends _$AnguloEntrada {

  @override
  Angulo build() {
    return Angulo();
  }

  void actualizarValor( Angulo valor ){
    state = valor;
  }

}

@riverpod
class AnguloSalida extends _$AnguloSalida {

  @override
  Angulo build() {
    return Angulo();
  }

  void actualizarValor( Angulo valor ){
    state = valor;
  }

}

@riverpod
class AnguloValorNumerico extends _$AnguloValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class AnguloValorOutput extends _$AnguloValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class AnguloController extends _$AnguloController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

