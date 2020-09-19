import 'package:flutter/material.dart';
import 'package:flutter_web2/theme/theme.dart';
import 'data.dart';


Widget buildProduk(Car car, int index, BuildContext context){
  //Ukuran
  var spesialsize;
  spesialsize=MediaQuery.of(context).size.width;
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(11),
    child: Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: LightColors.warnaJudul,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                car.condition,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: spesialsize*0.015,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: spesialsize*0.02,
        ),

        Container(
          child: Center(
            child: Hero(
              tag: car.model,
              child: Image.network(
                car.images[0],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),

        SizedBox(
          height: spesialsize*0.02,
        ),

        Text(
          car.model,
          style: TextStyle(
            fontSize: spesialsize*0.03
          ),
        ),

        SizedBox(
          height: spesialsize*0.02,
        ),

        Text(
          car.brand,
          style: TextStyle(
            fontSize: spesialsize*0.04,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        SizedBox(
          height: spesialsize*0.02,
        ),

        Text(
          "Promo " + (car.condition == "Daily" ? "Cuci Gudang" : car.condition == "Weekly" ? "New Arrival" : "Reguler"),
          style: TextStyle(
            fontSize: spesialsize*0.02,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}