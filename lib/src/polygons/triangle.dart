import 'package:lp_engine/src/utils/matrix_base.dart';
//tudo certo

class Triangle {
  late int height;
  late int width;
  late int posX;
  late int posY;
  late String carac;
  late int movX;
  late int movY;
  void create(int alt, String simbol, int mX, int mY) {
    height = alt;
    carac = simbol;
    width = 2 * alt - 1;
    movX = mX;
    movY = mY;
  }

  void objTomatrix(MatrixBase base, int x, int y) {
    int c = height - 1;
    int d = height + 1;
    posX = x;
    posY = y;
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
    int c = height - 1;
    int d = height + 1;
    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        if (j < c || j > d - 2) {
          base.put(i + posX, j + posY, ' ');
        } else {
          base.put(i + posX, j + posY, ' ');
        }
      }

      print(' ');
      c--;
      d++;
    }
  }
}
