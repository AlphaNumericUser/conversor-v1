
List<Distancia> distancias = [
  Distancia(nombre: 'm', ratio: 1),
  Distancia(nombre: 'cm', ratio: 100),
  Distancia(nombre: 'mm', ratio: 1000),
  Distancia(nombre: 'km', ratio: 0.001),
];

class Distancia {
  String nombre;
  double ratio; // Factor de conversión con respecto a una unidad base

  Distancia({
    required this.nombre,
    required this.ratio,
  });

  static double convertir(double valor, Distancia distanciaEntrada, Distancia distanciaSalida) {
    // Convierte el valor a la unidad base
    double valorEnUnidadBase = valor / distanciaEntrada.ratio;
  
    // Convierte el valor de la unidad base a la unidad de salida
    double valorConvertido = valorEnUnidadBase * distanciaSalida.ratio;
  
    return valorConvertido;
  }
}