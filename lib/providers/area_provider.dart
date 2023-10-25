import 'package:conversor/Entities/area.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_provider.g.dart';

@riverpod
class AreaProvider extends _$AreaProvider {
  @override
  List<Area> build() {
    return [
      Area(nombre: 'm²', ratio: 1),
      Area(nombre: 'cm²', ratio: 10000),
      Area(nombre: 'mm²', ratio: 1000000),
      Area(nombre: 'km²', ratio: 0.000001),
      Area(nombre: 'ha', ratio: 0.0001),
      Area(nombre: 'ft²', ratio: 10.7639),
      Area(nombre: 'yd²', ratio: 1.19599),
    ];
  }

  double convertir(double valor, Area areaEntrada, Area areaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / areaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * areaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class AreaEntrada extends _$AreaEntrada {

  @override
  Area build() {
    return Area();
  }

  void actualizarValor( Area valor ){
    state = valor;
  }

}

@riverpod
class AreaSalida extends _$AreaSalida {

  @override
  Area build() {
    return Area();
  }

  void actualizarValor( Area valor ){
    state = valor;
  }

}

@riverpod
class AreaValorNumerico extends _$AreaValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class AreaValorOutput extends _$AreaValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class AreaController extends _$AreaController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

