import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'fungsi/dashboardchat.dart';
import 'theme/active_project_card.dart';
import 'theme/theme.dart';
import 'theme/top_container.dart';

class HomePage extends StatefulWidget {
  static CircleAvatar subIconCustom() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.transparent,
      child: Icon(
        Icons.list_alt,
        size: 30.0,
        color: LightColors.warnaCustonIcon,
      ),
    );
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.warnaSubhead,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Ukuran
    double width = MediaQuery.of(context).size.width;
    var spesialsize, heightCustom, widthCustom, headerSize;
    heightCustom = MediaQuery.of(context).size.height;
    widthCustom = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).size.height<450){
      if (MediaQuery.of(context).size.width<550){
        headerSize=130;
      }else{
        if (MediaQuery.of(context).size.width>860)
          {
            headerSize=widthCustom*0.3;
          }else{
                headerSize=130;
              }
        }
    }else{
      headerSize=heightCustom*0.3;
    }
     //specialSize
    if (MediaQuery.of(context).size.height>MediaQuery.of(context).size.width){
      spesialsize=MediaQuery.of(context).size.height;
    }else{
      spesialsize=MediaQuery.of(context).size.width;
    }


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardChat()),);
                      },
                      child: Icon(Icons.chat,),
                      backgroundColor: LightColors.warnaHead,
                    ),
                    body: Container( //Background
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.grey])),
                      child: SafeArea(
                        child: Column(
                          children: <Widget>[
                            TopContainer(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                  )),
                              height: headerSize,
                              width: width,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        ClipRect(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                color: Colors.transparent, // button color
                                                child: InkWell(
                                                  splashColor: Colors.blueGrey, // inkwell color
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(width: spesialsize*0.08, height: spesialsize*0.03,
                                                          child: Icon(Icons.shop,
                                                        size: spesialsize*0.04,
                                                        color: Colors.black,)),
                                                      Text("Daftar Belanja", style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                        fontSize: spesialsize*0.03,
                                                      ),)
                                                    ],
                                                  ),
                                                  onTap: () {
              //                                    Navigator.push(
              //                                      context,
              //                                      MaterialPageRoute(
              //                                          builder: (context) => CountryListPage()
              //                                      ),
              //                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Icon(Icons.person,
                                            color: Colors.black, size: spesialsize*0.04),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 0.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          CircularPercentIndicator(
                                            radius: 90.0,
                                            lineWidth: 5.0,
                                            animation: true,
                                            percent: 1, //percentase lingkaran avatar
                                            circularStrokeCap: CircularStrokeCap.round,
                                            progressColor: Color.fromRGBO(96, 96, 96, 1),
                                            backgroundColor: Colors.amber,
                                            center: CircleAvatar(
                                              backgroundColor: Colors.transparent,
                                              radius: 35.0,
                                              backgroundImage: NetworkImage(
                                                'https://sweetroommedan.com/assets/images/srmcd-122x95.png',
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  'Sweet Room Medan',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontFamily: 'AlexBrush',
                                                    fontSize: spesialsize*0.05,
                                                    color: Color.fromRGBO(204, 0, 0, 1),
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Pusat Grosir Sprei & Gordyn Berkualitas',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: spesialsize*0.02,
                                                    fontStyle: FontStyle.italic,
                                                    color: Color.fromRGBO(97, 97, 97, 1),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ]
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                subheading('Popular Catalog')
                                              ],
                                            ),
                                            SizedBox(height: spesialsize*0.015),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.width*0.2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Katun Jepang',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Katun CVC',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Sutra Silk',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Sutra Organic',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Serat Bambu',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                subheading('Produk Kami')
                                              ],
                                            ),
                                            SizedBox(height: spesialsize*0.015),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.width*0.2,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Bedsheets',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Curtains',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Wall & Floor',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Decoration',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: LightColors.warnaBackground.withOpacity(0.8),
                                                      offset: Offset(-6.0, -6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.8),
                                                      offset: Offset(6.0, 6.0),
                                                      blurRadius: 16.0,
                                                    ),
                                                  ],
                                                  color: LightColors.warnaButton,
                                                  borderRadius: BorderRadius.circular(12.0),
                                                ),
                                                margin: EdgeInsets.fromLTRB(spesialsize*0.0025, 0, spesialsize*0.0025, 0),
                                                child: InkWell(
                                                  onTap: () {
              //                                  Navigator.push(context,
              //                                      MaterialPageRoute( builder: (context) => MapGlobal()
              //                                      ));
                                                  },
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                          CircleAvatar(
                                                            backgroundColor: Colors.transparent,
                                                            backgroundImage: new NetworkImage('https://www.userlogos.org/files/logos/zahnjin/sr_logo_refl.png'),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Help',
                                                        style: new TextStyle(color: Colors.black.withOpacity(0.9),
                                                            fontWeight: FontWeight.bold,
                                                            fontStyle: FontStyle.italic,
                                                            fontSize: widthCustom*0.02),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.transparent,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            subheading('Tips & News'),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text('Bagaimana cara mencuci sprei?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Bagaimana cara mencuci gordyn?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Mengapa kain saya luntur?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Bagaimana cara order?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Buah apa yang warnya kuning, kalo dibuka dalamnya pisang?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Nikmat apa yang engkau dustai?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text('Kenapa udang di balik batu?',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Center(
                                              child: Text("© Copyright 2020 Mr.TNB - All Rights Reserved"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
          
