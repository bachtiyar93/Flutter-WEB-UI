


class Produk {

  String brand;
  String model;
  double price;
  String condition;
  List<String> images;
Produk(this.brand, this.model, this.price, this.condition, this.images);

}

List<Produk> dataProduk(){
  return <Produk>[
    Produk(
      "Makanan Ringan",
      "Kerupuk Kadal",
      2580,
      "Weekly",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Produk(
      "Makanan Berat",
      "Nasi Besi Berani",
      3580,
      "Monthly",
      [
        "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/09/Resep-Nasi-Uduk-Betawi-1.jpg?fit=2448%2C3264&ssl=1",
      ],
    ),
  ];
}

class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Hertz",
      174,
      "assets/images/hertz.png",
    ),
    Dealer(
      "Avis",
      126,
      "assets/images/avis.png",
    ),
    Dealer(
      "Tesla",
      89,
      "assets/images/tesla.jpg",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}