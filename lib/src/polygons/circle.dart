import 'dart:math';
import 'package:lp_engine/src/utils/matrix_base.dart';
//tudo certo

class Circle {
  late int posX;
  late int posY;
  late int height;
  late int width;
  late String carac;
  late double hUnitsPerChar;
  late double center;
  late double dist;
  late int radius;
  late double lineWidth_2;
  late MatrixBase circ;
  late int movX; //essa flag indica se o objeto pode se mover
  late int movY; //essa flag indica se o objeto pode se mover
  late int realX; //essa flag indica o movimento
  late int realY; //essa flag indica o movimento

  void create(int radius, int lineWidth, double xScale, String carac, int mX, int mY) {
    hUnitsPerChar = 1 / xScale;
    double hChars = (2 * radius + lineWidth) / hUnitsPerChar;
    double vChars = (2 * radius + lineWidth).toDouble();
    lineWidth_2 = lineWidth / 2;
    center = radius + lineWidth_2;
    this.carac = carac;
    this.radius = radius;
    height = hChars.toInt();
    width = vChars.toInt();
    movX = mX;
    movY = mY;
    randonDirection();
  }

  void objTomatrix(MatrixBase base, int X, int Y) {
    posX = X;
    posY = Y;
    for (int j = 0; j <= width - 1; j++) {
      double y = j + 0.5;
      for (int i = 0; i <= height - 1; i++) {
        double x = (i + 0.5) * hUnitsPerChar;
        dist = sqrt((x - center) * (x - center) + (y - center) * (y - center));

        if (dist > radius - lineWidth_2 && dist < radius + lineWidth_2) {
          base.put(j + X, i + Y, carac);
        } else {
          base.put(j + X, i + Y, ' ');
        }
      }
    }
  }

  void objDelete(MatrixBase base){
    for (int j = 0; j <= width - 1; j++) {
      double y = j + 0.5;
      for (int i = 0; i <= height - 1; i++) {
        double x = (i + 0.5) * hUnitsPerChar;
        dist = sqrt((x - center) * (x - center) + (y - center) * (y - center));

        if (dist > radius - lineWidth_2 && dist < radius + lineWidth_2) {
          base.put(j + posX, i + posY, ' ');
        } else {
          base.put(j + posX, i + posY, ' ');
        }
      }
    }
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
