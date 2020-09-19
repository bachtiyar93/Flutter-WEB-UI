import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Car {

  String brand;
  String model;
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.price, this.condition, this.images);

}

List<Car> getProdukList(){
  return <Car>[
    Car(
      "SR 33 D",
      "Katun Jepang",
      50.000,
      "12 Month",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "SR 50 E",
      "Katun CVC",
      3580,
      "Monthly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Nissan",
      "GTR",
      1100,
      "Daily",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Acura",
      "MDX 2020",
      2200,
      "Monthly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Chevrolet",
      "Camaro",
      3400,
      "Weekly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Ferrari",
      "Spider 488",
      4200,
      "Weekly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      2300,
      "Weekly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Fiat",
      "500x",
      1450,
      "Weekly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Honda",
      "Civic",
      900,
      "Daily",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
      ],
    ),
    Car(
      "Citroen",
      "Picasso",
      1200,
      "Monthly",
      [
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
        "https://sweetroommedan.com/assets/images/whatsapp-image-2020-03-16-at-13.06.46-3-952x952.jpeg",
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