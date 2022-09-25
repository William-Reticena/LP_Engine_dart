import 'dart:io';

import 'package:lp_engine/src/utils/matrix_base.dart';

class Triangle {
  late int height;
  late int width = height + 2;
  late int posX;
  late int posY;
  late String carac;
  void create(int alt, String simbol) {
    height = alt;
    carac= simbol;
    int base = 2 * alt - 1;
    int meio = (base / 2).toInt();

       for(int i = 0; i < height; i++){
        for(int j = 0; j < meio - i; j++){
            stdout.write(' ');
        }
        for(int m = 0; m < i; m++){
            stdout.write(carac);
        }
        for(int n = 1; n < i; n++){
            stdout.write(carac);
        }
        print(' ');
    }
    
  }

  void objTomatrix(MatrixBase base, int x, int y){
    posX = x;
    posY = y;
    int chao = 2 * height - 1;
    int meio = (chao / 2).toInt();
    
    for(int i = 0; i < height; i++){
      for(int j = 0; j < meio - i; j++){
          base.put(i + x, j + y, ' ');
        }
        for(int m = 0; m < i; m++){
          base.put(i + x, m + y, carac);
        }
        for(int n = 1; n < i; n++){
          base.put(i + x, n + y, carac);
        }
    }
  }

  void objDelete(MatrixBase base){
    for(int i = 0; i < width; i++){
      for(int j = 0; j < height; j++){
        base.put(j + posX, i + posY, ' ');
      }
    }
  }

  
}
