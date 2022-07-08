class ListaCitta {
  static List<Citta> listaCitta = [
    Citta(
      nome: "New York",
      img: "res/citta/new-york.jpg",
      continente: "America del Nord",
      lingua: "Inglese",
      valuta: "Dollaro",
    ),
    Citta(
      nome: "Paris",
      img: "res/citta/paris.jpg",
      continente: "Europa",
      lingua: "Francese",
      valuta: "Euro",
    ),
    Citta(
        nome: "Kyoto",
        img: "res/citta/kyoto.jpg",
        continente: "Asia",
        lingua: "Giappone",
        valuta: "Yen",
        luoghi: [
          Luogo(
              nome: "Tempio Kiyomizu",
              descrizione:
                  "Questo vecchio tempio è stato creato da molti shaolin che volevano avere un luogo tranquillo dove allenarsi mentre fuori c'era la guerra.",
              img: "res/citta/kyoto-0.jpg"),
          Luogo(
              nome: "Fushimi Inari",
              descrizione: "Tempio bellissimo",
              img: "res/citta/kyoto-1.jpg"),
          Luogo(
              nome: "Arashyana",
              descrizione: "Coltivazioni di bambù",
              img: "res/citta/kyoto-2.jpg"),
          Luogo(
              nome: "Tempio Nanzen-ji",
              descrizione: "Tempio molto bello",
              img: "res/citta/kyoto-3.jpg")
        ])
  ];
}

class Citta {
  String nome;
  String img;
  String continente;
  String lingua;
  String valuta;
  String localizzazione;
  List<Luogo> luoghi;

  Citta(
      {this.nome,
      this.img,
      this.continente,
      this.lingua,
      this.valuta,
      this.localizzazione,
      this.luoghi});
}

class Luogo {
  String nome;
  String descrizione;
  String posizione;
  String img;

  Luogo({this.nome, this.descrizione, this.posizione, this.img});
}
