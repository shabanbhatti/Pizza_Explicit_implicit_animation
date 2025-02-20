import 'dart:isolate';

import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
   TopImage({super.key, required this.rotationTurn,required this.isClicked, required this.imgSrc} );

Animation<double> rotationTurn;
var imgSrc;
bool isClicked;

  @override
  Widget build(BuildContext context) {
    var mqSize = MediaQuery.of(context).size;
    return Align(
                   alignment: Alignment.topCenter,
                   child: Container(
                     height: mqSize.height * 0.3,
                     width: mqSize.width * 0.7,
                     color: Colors.transparent,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         RotationTransition(
                           turns: rotationTurn,
                           child: Container(
                               height: mqSize.height * 0.3,
                               color: Colors.transparent,
                               width: mqSize.width * 0.7,
                               child:
                                    Image.asset(
                                       imgSrc
                                     )
                           )
                         )
                       ],
                     ),
                   ),
                 );
  }
}