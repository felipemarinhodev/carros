import 'package:carros/pages/carro/carro.dart';

class CarrosApi {
  static List<Carro> getCarros() {
    final carros = List<Carro>();

    carros.add(Carro(
        nome: "Porsche Panamera",
        urlFoto:
            "http://www.livroandroid.com.br/livro/carros/esportivos/Porsche_Panamera.png"));
    carros.add(Carro(
        nome: "Chevrolet Corvette Z06",
        urlFoto:
            "http://www.livroandroid.com.br/livro/carros/esportivos/Chevrolet_Corvette_Z06.png"));
    carros.add(Carro(
        nome: "BMW M5",
        urlFoto:
            "http://www.livroandroid.com.br/livro/carros/esportivos/BMW.png"));
    carros.add(Carro(
        nome: "Renault Megane RS Trophy",
        urlFoto:
            "http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png"));

    return carros;
  }
}