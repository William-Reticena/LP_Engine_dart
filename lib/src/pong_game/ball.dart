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

  void init(MatrixBase base) {
    int direction = (Random().nextInt(1)) as bool ? -1 : 1;

    print(direction);

    super.create(_radius, 2, 2, '*', 1, 1);

    super.objTomatrix(base, (_height / 2 - super.width / 2).ceil(),
        (_width / 2 - super.height / 2).ceil());
  }
}