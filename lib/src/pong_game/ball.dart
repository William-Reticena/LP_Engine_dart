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
  late int middleX = (_height / 2 - super.width / 2).ceil();
  late int middleY = (_width /2 - super.height / 2).ceil();
  late int realX; //essa flag indica o movimento
  late int realY; //essa flag indica o movimento

  void init(MatrixBase base, int mX, int mY) {
    randonDirection();
    movX = mX;
    movY = mY;
    super.create(_radius, 2, 2, '*', movX, movY);

    super.objTomatrix(base, middleX, middleY);
    }

    void randonDirection(){
      int randomNumberX = Random().nextInt(2);
      int randomNumberY = Random().nextInt(3);
      if (randomNumberX == 1) {
      realX = -1;
      } else {
      realX = 1;
      }
      if (randomNumberY == 1) {
      realY = 1;
      } else if(randomNumberY == 1) {
      realY = 0;
      } else {
      realY = -1;
    }
  }
}
