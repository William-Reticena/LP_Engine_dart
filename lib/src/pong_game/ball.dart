import 'dart:io';
import 'dart:math';

import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Ball extends Circle {
  final int _radius = 2;
  late final int _x;
  late final int _y;
  final int _width = stdout.terminalColumns;
  final int _height = stdout.terminalLines;
  late int movX;
  late int movY;
  late int dMovX;
  late int dMovY;
  late int middleX = (_height / 2 - super.width / 2).ceil();
  late int middleY = (_width /2 - super.height / 2).ceil();
  
  void init(MatrixBase base) {
    randonDirection();

    super.create(_radius, 2, 2, '*', movX, movY);

    super.objTomatrix(base, middleX,
        middleY);
    }

    void randonDirection(){
      int randomNumberX = Random().nextInt(2);
      int randomNumberY = Random().nextInt(3);
      if (randomNumberX == 1) {
      movX = -1;
      } else {
      movX = 1;
      }
      if (randomNumberY == 1) {
      movY = 1;
      } else if(randomNumberY == 1) {
      movY = 0;
      } else {
      movY = -1;
    }

    //pode se movimentar ?
    if(movY != 0){
      dMovY = 1;
    } else {
      dMovY = 0;
    }
    if(movX == 1){
      dMovX = 1;
    } else {
      dMovX = 0;
    }
  }
}
