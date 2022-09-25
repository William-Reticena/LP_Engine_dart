import 'dart:io';
import 'dart:math';
import 'package:lp_engine/src/utils/matrix_base.dart';

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

  void create(int radius, int lineWidth, double xScale, String carac) {
    hUnitsPerChar = 1 / xScale;
    double hChars = (2 * radius + lineWidth) / hUnitsPerChar;
    double vChars = (2 * radius + lineWidth).toDouble();
    lineWidth_2 = lineWidth / 2;
    center = radius + lineWidth_2;
    this.carac = carac;
    this.radius = radius;
    height = hChars.toInt();
    width = vChars.toInt();
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
}
