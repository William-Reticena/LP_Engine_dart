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
  
  void init(MatrixBase base) {
    int randomNumberX = Random().nextInt(2);
    int randomNumberY = Random().nextInt(2);

    int? direction;

    if (randomNumberX == 1) {
      movX = -1;
    } else {
      movX = 1;
    }

    if (randomNumberY == 1) {
      movY  = -1;
    } else {
      movY = 1;
    }

    print(direction);

    super.create(_radius, 2, 2, '*', 1, 1);

    super.objTomatrix(base, middleX,
        middleY);
  }
}
