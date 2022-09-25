import 'dart:io';

import 'package:lp_engine/src/utils/matrix_base.dart';

class Triangle {
  late int height;
  late int width;
  late int posX;
  late int posY;
  late String carac;
  void create(int alt, String simbol) {
    height = alt;
    carac = simbol;
    width = 2 * alt - 1;
  }

  void objTomatrix(MatrixBase base, int x, int y) {
    int c = height - 1;
    int d = height + 1;
    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        if (j < c || j > d - 2) {
          base.put(i + x, j + y, ' ');
        } else {
          base.put(i + x, j + y, carac);
        }
      }

      print(' ');
      c--;
      d++;
    }
  }

  void objDelete(MatrixBase base) {
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        base.put(j + posX, i + posY, ' ');
      }
    }
  }
}
