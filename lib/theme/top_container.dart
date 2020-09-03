import 'package:flutter/material.dart';
import 'package:flutter_web2/theme/theme.dart';


class TopContainer extends StatelessWidget {
  final double height;
  final double width;
  final Decoration decoration;
  final Widget child;
  final EdgeInsets padding;
  TopContainer({this.decoration,this.height, this.width, this.child, this.padding});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0)
      ),
      child: Container(
        padding: padding!=null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [LightColors.warnaHead, LightColors.warnaHead2])),
        height: height,
        width: width,
        child: child,
      ),
    );
//    return Container(
//      padding: padding!=null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
//      decoration: decoration,
//      height: height,
//      width: width,
//      child: child,
//      );
  }
}