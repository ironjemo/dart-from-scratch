import 'dart:io';
import 'dart:math';

// Interfaz de cálculo adicional
abstract class ExtraCalculation {
  double add10();
}

// Interfaz para figuras
abstract class Figura {
  double area();
  double perimetro();
}

// Clase Circulo implementando interfaces
class Circulo implements Figura, ExtraCalculation {
  double? radio;

  @override
  double area() => pi * radio! * radio!;

  @override
  double perimetro() => 2 * pi * radio!;

  @override
  double add10() => radio! + 10;
}

void main() {
  Circulo circ = Circulo();
  circ.radio = 20;

  var result_area = circ.area();
  var result_perim = circ.perimetro();

  print("El área es: $result_area y el perímetro es: $result_perim");
  print("El nuevo radio es: ${circ.add10()}");

  // Serie de Fibonacci
  int prev = 0, next = 1, sum;
  print("\nSerie de Fibonacci:");
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  // División con manejo de excepciones
  try {
    print("\nNúmero a dividir:");
    double n = double.parse(stdin.readLineSync()!);
    print("Divisor:");
    double divisor = double.parse(stdin.readLineSync()!);

    if (divisor == 0) {
      throw ArgumentError("No se puede dividir por cero!");
    }

    print("Resultado: ${n / divisor}");
  } on ArgumentError catch (e) {
    print("Error: ${e.message}");
  } catch (e) {
    print("Error desconocido.");
  }
}
