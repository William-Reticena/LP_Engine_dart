import 'dart:io';

import 'package:lp_engine/src/utils/matrix_base.dart';

class Triangle {
  late int _height;
  late int _width = _height + 2;
  late int posX;
  late int posY;
  late String simbol;
  void create(int height, String simbol) {
    _height = height;
    /*for(int k = 1; k <= height; k++){
      for(int j = 1; j <= height- k; j++){
        stdout.write(' ');
      }
      for(int i = 1; i <= 2 * k - 1; i++){
        stdout.write(simbol);
      }
      print('');
    }*/
    int base = 2 * height - 1;
    int meio = (base / 2).toInt();

       for(int i = 0; i < height; i++){
        for(int j = 0; j < meio - i; j++){
            stdout.write(' ');
        }
        for(int m = 0; m < i; m++){
            stdout.write(simbol);
        }
        for(int n = 1; n < i; n++){
            stdout.write(simbol);
        }
        print(' ');
    }
    
  }

  void objTomatrix(MatrixBase base, int x, int y){
    posX = x;
    posY = y;
    int i, j, k;
    /*for(k = 1; k < _height; k++){
      for(j = 1; j < _height - k; j++){
        base.put(j + x, k + y, ' ');
      }
      for(i = 1; i < 2 * k - 1; i++){
        base.put(i + x, k + y, '*');
      }
    }*/
    int chao = 2 * _height - 1;
    int meio = (chao / 2).toInt();

    for(int i = 0; i < _height; i++){
      for(int j = 0; j < meio - i; j++){
          base.put(i + x, i + y, ' ');
        }
        for(int m = 0; m < i; m++){
          base.put(i + x, m + y, '*');
        }
        for(int n = 1; n < i; n++){
          base.put(i + x, n + y, '*');
        }
      //print(' ');
    }
  }

  void objDelete(MatrixBase base){
    for(int i = 0; i < _width; i++){
      for(int j = 0; j < _height; j++){
        base.put(j + posX, i + posY, ' ');
      }
    }
  }
}
