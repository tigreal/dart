import 'dart:convert';

void main(){
  final jsonRaw = '{"nombre":"gandalf","apellido": "magia"}';
  final jsonFinal = json.decode(jsonRaw);

  final parseJson =  new Heroe.fromJson(jsonFinal);

  final nombre = new Heroe(nombre: 'logan',poder: 'alvarez');
  print(nombre);

  print(parseJson.nombre);
  print(parseJson.poder);



}

class Heroe extends Personaje{
  String nombre;
  String poder;
  String insigniaHeroe;

  sonidoDePoder(){

    print ("super HUUU");
  }


  Heroe({this.nombre, this.poder = 'sin poder'});

  Heroe.fromJson(parseJson){

    this.nombre = parseJson['nombre'];
    this.poder = parseJson['apellido'];

  }

  String toString() => '$nombre - $poder';



}
abstract class Personaje{

  String insigniaHeroe;
  void sonidoDePoder();

}
