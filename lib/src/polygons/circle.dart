import 'dart:io';
import 'dart:math';

class Circle {
  void create(int radius, int lineWidth, double xScale) {
    double hUnitsPerChar = 1 / xScale;
    double hChars = (2 * radius + lineWidth) / hUnitsPerChar;
    double vChars = (2 * radius + lineWidth).toDouble();
    double dist;
    double lineWidth_2 = lineWidth / 2;
    double center = radius + lineWidth_2;
    for (int j = 0; j <= vChars - 1; j++) {
      double y = j + 0.5;
      for (int i = 0; i <= hChars - 1; i++) {
        double x = (i + 0.5) * hUnitsPerChar;
        dist = sqrt((x - center) * (x - center) + (y - center) * (y - center));

        if (dist > radius - lineWidth_2 && dist < radius + lineWidth_2) {
          stdout.write('*');
        } else {
          stdout.write(' ');
        }
      }

      print('');
    }
  }
}
