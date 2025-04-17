import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    print("Ingrese un número: ");
    int num = int.parse(stdin.readLineSync()!);

    // Evaluamos si el número es positivo, negativo o cero
    if (num > 0) {
      print("Positivo");
    } else if (num < 0) {
      print("Negativo");
    } else {
      print("Es cero");
    }

    // Verificamos si es par o impar
    if (esPar(num)) {
      print("El número $num es par.");
    } else {
      print("El número $num es impar.");
    }
  }

  // Función para verificar si un número es par
  bool esPar(int n) {
    return n % 2 == 0;
  }
}

class Challenge2 {
  void run() {
    print("Ingrese primer número: ");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Ingrese segundo número: ");
    double num2 = double.parse(stdin.readLineSync()!);

    print("\nOperaciones básicas:");
    print("Suma: ${num1 + num2}");
    print("Resta: ${num1 - num2}");
    print("Multiplicación: ${num1 * num2}");
    print(
        "División: ${num2 != 0 ? num1 / num2 : "No se puede dividir por cero"}");

    print("\nFunciones adicionales:");
    print("Promedio: ${promedio(num1, num2)}");
    print("Mayor número: ${maximo(num1, num2)}");
    print("Menor número: ${minimo(num1, num2)}");
    print("Comparación: ${comparar(num1, num2)}");
  }

  double promedio(double a, double b) => (a + b) / 2;

  double maximo(double a, double b) => a > b ? a : b;

  double minimo(double a, double b) => a < b ? a : b;

  String comparar(double a, double b) {
    if (a > b) return "$a es mayor que $b";
    if (a < b) return "$a es menor que $b";
    return "Ambos números son iguales.";
  }
}

class Challenge3 {
  void run() {
    print("Ingrese un número:");
    int numero = int.parse(stdin.readLineSync()!);

    print("\nResultados:");
    print("Cuadrado: ${cuadrado(numero)}");
    print("Cubo: ${cubo(numero)}");

    if (numero >= 0) {
      print("Raíz cuadrada: ${raizCuadrada(numero)}");
    } else {
      print("No se puede calcular la raíz cuadrada de un número negativo.");
    }

    print("Es ${esPar(numero) ? 'par' : 'impar'}.");
    print("Es ${esPrimo(numero) ? 'primo' : 'no primo'}.");
  }

  int cuadrado(int n) => n * n;

  int cubo(int n) => n * n * n;

  double raizCuadrada(int n) => sqrt(n);

  bool esPar(int n) => n % 2 == 0;

  bool esPrimo(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}

class Challenge4 {
  void run() {
    double radio = leerRadioPositivo();

    double area = calcularArea(radio);
    double perimetro = calcularPerimetro(radio);
    double diametro = calcularDiametro(radio);

    print("=== RESULTADOS ===");
    print("Radio: $radio");
    print("Área: ${area.toStringAsFixed(2)}");
    print("Perímetro: ${perimetro.toStringAsFixed(2)}");
    print("Diámetro: ${diametro.toStringAsFixed(2)}");
  }

  double leerRadioPositivo() {
    while (true) {
      print("Ingrese el radio del círculo: ");
      String? entrada = stdin.readLineSync();
      double? radio = double.tryParse(entrada ?? '');

      if (radio != null && radio > 0) {
        return radio;
      } else {
        print("Por favor, ingrese un número válido y positivo.");
      }
    }
  }

  double calcularArea(double radio) {
    return pi * pow(radio, 2);
  }

  double calcularPerimetro(double radio) {
    return 2 * pi * radio;
  }

  double calcularDiametro(double radio) {
    return 2 * radio;
  }
}

class Challenge5 {
  void run() {
    print("Ingrese un numero entre 1 y 7: ");
    int dia = int.parse(stdin.readLineSync()!);

    switch (dia) {
      case 1:
        print("El dia de la semana es: Lunes");
        break;
      case 2:
        print("El dia de la semana es: Martes");
        break;
      case 3:
        print("El dia de la semana es: Miercoles");
        break;
      case 4:
        print("El dia de la semana es: Jueves");
        break;
      case 5:
        print("El dia de la semana es: Viernes");
        break;
      case 6:
        print("El dia de la semana es: Sabado");
        break;
      case 7:
        print("El dia de la semana es: Domingo");
        break;
      default:
        print("Numero no valido");
        return; // Termina aquí si no es válido
    }

    verificarTipoDia(dia);
  }

  void verificarTipoDia(int dia) {
    if (dia >= 1 && dia <= 5) {
      print("Es un día laborable.");
    } else if (dia == 6 || dia == 7) {
      print("Es fin de semana.");
    }
  }
}

class Challenge6 {
  void run() {
    print("Ingrese su salario mensual:");
    double salario = double.parse(stdin.readLineSync()!);

    double impuesto = salario > 1000000 ? 0.1 * salario : 0;
    print("El impuesto a pagar es: \$${impuesto.toStringAsFixed(2)}");

    clasificarSalario(salario);
  }

  void clasificarSalario(double salario) {
    if (salario < 1000000) {
      print("Nivel salarial: Bajo");
    } else if (salario <= 2000000) {
      print("Nivel salarial: Medio");
    } else {
      print("Nivel salarial: Alto");
    }
  }
}

class Challenge7 {
  void run() {
    try {
      print("Numero a dividir:");
      double n = double.parse(stdin.readLineSync()!);
      print("Divisor:");
      double divisor = double.parse(stdin.readLineSync()!);
      print("Resultado: ${n / divisor}");
    } catch (e) {
      print("Error al realizar la operacion!");
    }
  }
}

class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 1; i <= 100; i += 2) {
      suma += i;
    }
    print("La suma de numeros impares entre 1 y 100 es: $suma");
  }
}

class Clallenge9 {
  void run() {
    print("Ingrese numerador de la primera fraccion:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la primera fraccion: ");
    int den1 = int.parse(stdin.readLineSync()!);

    print("Ingrese numerador de la segunda freaccion: ");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la segunda fraccion: ");
    int den2 = int.parse(stdin.readLineSync()!);

    try {
      Fraccion fraccion1 = Fraccion(num1, den1);
      Fraccion fraccion2 = Fraccion(num2, den2);
      Fraccion resultado = fraccion1.sumar(fraccion2);
      print("La suma de $fraccion1 y $fraccion2 es: $resultado");
    } catch (e) {
      print("Error: $e");
    }
  }
}

class Fraccion {
  int numerador;
  int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw Exception("El denominador no puede ser cero");
    }
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNumerador =
        numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDenominador = denominador * otra.denominador;
    return Fraccion(nuevoNumerador, nuevoDenominador);
  }

  @override
  String toString() {
    return "$numerador/$denominador";
  }
}

class Challenge10 {
  void run() {
    print("Intoduce una palabra: ");
    String palabra = stdin.readLineSync()!;
    String invertida = palabra.split('').reversed.join();
    print("La palabra invertida es : $invertida");
  }
}

class Challenge11 {
  void run() {
    print("Introduce el primer numero:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Introduce l segundo numero: ");
    double num2 = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer numero:");
    double num3 = double.parse(stdin.readLineSync()!);
    double promedio = (num1 + num2 + num3) / 3;
    print("El promedio de los tres numeros es: $promedio");
  }
}

class Challenge12 {
  void run() {
    List<int> numeros = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el numero ${i + 1}:");
      numeros.add(int.parse(stdin.readLineSync()!));
    }
    print("El numero mas grande de la lista es : ${numeros.reduce(max)}");
  }
}

class Challenge13 {
  void run() {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
    bool esPalindromo = palabra == palabra.split('').reversed.join();
    if (esPalindromo) {
      print("La plabra $palabra es un palindromo.");
    } else {
      print("La palabra $palabra no es un palindromo.");
    }
  }
}

class Challenge14 {
  void run() {
    print("Introduce un numero:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero % 2 == 0) {
      print("El numero $numero es par.");
    } else {
      print("El numero $numero es impar.");
    }
  }
}

class Challenge15 {
  void run() {
    print("Introduce un numero:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero >= 0 && numero <= 10) {
      print("El numero $numero esta en el rango de 0 a 10.");
    } else {
      print("El numero $numero esta fuera de rango de 0 a 10.");
    }
  }
}
