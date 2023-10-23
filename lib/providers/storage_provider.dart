import 'package:conversor/Entities/storage.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_provider.g.dart';

@riverpod
class StorageProvider extends _$StorageProvider {
  @override
  List<Storage> build() {
    return [
      Storage(nombre: 'bit', ratio: 1),
      Storage(nombre: 'byte', ratio: 0.125),
      Storage(nombre: 'Kbit', ratio: 0.001),
      Storage(nombre: 'Kbyte', ratio: 0.000125),
      Storage(nombre: 'Mbit', ratio: 0.000001),
      Storage(nombre: 'Mbyte', ratio: 0.000000125),
      Storage(nombre: 'Gbit', ratio: 0.000000001),
      Storage(nombre: 'Gbyte', ratio: 0.000000000125),
      Storage(nombre: 'Tbit', ratio: 0.000000000001),
      Storage(nombre: 'Tbyte', ratio: 0.000000000000125),
    ];
  }

  double convertir(double valor, Storage distanciaEntrada, Storage distanciaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / distanciaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * distanciaSalida.ratio;
  
    return valorConvertido;
  }
  
}

@riverpod
class StorageEntrada extends _$StorageEntrada {

  @override
  Storage build() {
    return Storage();
  }

  void actualizarValor( Storage valor ){
    state = valor;
  }

}

@riverpod
class StorageSalida extends _$StorageSalida {

  @override
  Storage build() {
    return Storage();
  }

  void actualizarValor( Storage valor ){
    state = valor;
  }

}

@riverpod
class StorageValorNumerico extends _$StorageValorNumerico {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class StorageValorOutput extends _$StorageValorOutput {

  @override
  double build() {
    return 0;
  }

  void cambiarValor( double nuevoValor ){
    state = nuevoValor;
  }

}

@riverpod
class StorageController extends _$StorageController {
  @override
  TextEditingController build() {
    return TextEditingController();
  }
}

