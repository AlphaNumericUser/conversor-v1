import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'distance_provider.g.dart';

@riverpod
class Distance extends _$Distance {
  @override
   build() => 0;

   void kilometrosAMetros(double distance) {
    // Multiplica por 1000 para convertir de kilómetros a metros
    double result = distance * 1000;
  
    // Verifica si el resultado es un número entero
    if (result % 1 == 0) {
      // Si es un número entero, almacena el resultado como un entero
      state = result.toInt();
    } else {
      // Si tiene decimales, almacena el resultado como un double
      state = result;
    }
  }
}