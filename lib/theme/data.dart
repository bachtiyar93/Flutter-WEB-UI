
import 'dart:convert';
import 'dart:core';
import 'package:flutter_web2/fungsi/sumberapi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

//Bangun List Data
Future<List<Produk>>dataProduk() async {
  final response = await http.post(SumberApi.dataproduk);
    return compute(parseProduk, response.body);
}

//json dipecahkan
List<Produk> parseProduk(String responseBody) {
final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//data dikembalikan ke List
return parsed.map<Produk>((json) => Produk.fromJson(json)).toList();
}

class Produk {
    Produk({
        this.id,
        this.kain,
        this.seri,
        this.harga,
        this.stok,
        this.images,
    });

    int id;
    String kain;
    String seri;
    int harga;
    String stok;
    List<String> images;

    factory Produk.fromJson(Map<String, dynamic> json) => Produk(
        id: json["id"],
        kain: json["kain"],
        seri: json["seri"],
        harga: json["harga"],
        stok: json["stok"],
        images: List<String>.from(json["images"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "kain": kain,
        "seri": seri,
        "harga": harga,
        "stok": stok,
        "images": List<dynamic>.from(images.map((x) => x)),
    };
}

// class Produk {
//   String brand;
//   String model;
//   double price;
//   String condition;
//   List<String> images;
//   Produk(this.brand, this.model, this.price, this.condition, this.images);
// }
//
// List<Produk> dataProduk(){
//   return <Produk>[
//     Produk(
//       "Makanan Ringan",
//       "Kerupuk Kadal",
//       2580,
//       "promo",
//       [
//         "assets/images/1.png",
//         "assets/images/2.png",
//         "assets/images/3.png",
//       ],
//     ),
//     Produk(
//       "Makanan Berat",
//       "Nasi Besi Berani",
//       3580,
//       "Monthly",
//       [
//         "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/09/Resep-Nasi-Uduk-Betawi-1.jpg?fit=2448%2C3264&ssl=1",
//       ],
//     ),
//   ];
// }

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
