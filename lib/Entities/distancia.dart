// ignore_for_file: public_member_api_docs, sort_constructors_first
class Distancia {
  String nombre;
  double ratio; // Factor de conversión con respecto a una unidad base

  Distancia({
    this.nombre = 'm',
    this.ratio = 1,
  });

  static double convertir(double valor, Distancia distanciaEntrada, Distancia distanciaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / distanciaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * distanciaSalida.ratio;
  
    return valorConvertido;
  }

}
