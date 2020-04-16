import 'dart:convert';



void main() {
  final jsonRaw =
      '{"nombre":"gandalf","apellido": "magia"}';
  final jsonFinal =
      json.decode(jsonRaw);

  final parseJson =
      new Heroe.fromJson(
          jsonFinal);

  final nombre = new Heroe(
      nombre: 'logan',
      poder: 'alvarez');
  print(nombre);

  print(parseJson.nombre);
  print(parseJson.poder);
  final pato = new tiburon();
  pato.nadar();
  pato.volar();

}

class Heroe extends Personaje {
  String nombre;
  String poder;
  String insigniaHeroe;

  sonidoDePoder() {
    print("super HUUU");
  }

  Heroe(
      {this.nombre,
      this.poder = 'sin poder'});

  Heroe.fromJson(parseJson) {
    this.nombre =
        parseJson['nombre'];
    this.poder =
        parseJson['apellido'];
  }

  String toString() =>
      '$nombre - $poder';
}

abstract class Personaje {
  String insigniaHeroe;

  void sonidoDePoder();
}

// uso de mixins
abstract class Animal {}

abstract class Mamifero
    extends Animal {}

abstract class Ave extends Animal {
}

abstract class Pez extends Animal {
}

abstract class Volardor {
  void volar() =>
      print('estoy volando');
}

abstract class Caminante {
  void caminar() =>
      print('estoy caminando');
}

abstract class Nadador {
  void nadar() =>
      print('estoy nadando');
}

class defin extends Mamifero
    with Nadador {}

class Muercielago extends Mamifero
    with Caminante, Volardor {}

class Gato extends Mamifero
    with Caminante {}

class Paloma extends Mamifero
    with Caminante, Volardor {}

class tiburon extends Pez
    with Nadador, Volardor {}
