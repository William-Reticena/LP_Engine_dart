import 'dart:io';

import 'package:lp_engine/src/utils/matrix_base.dart';

class Triangle {
  late int _height;
  late int _width = _height + 2;
  late int _posX;
  late int _posY;
  late String _simbol;
  void create(int height, String simbol) {
    _height = height;
    for(int k = 1; k <= height; k++){
      for(int j = 1; j <= height- k; j++){
        stdout.write(' ');
      }
      for(int i = 1; i <= 2 * k - 1; i++){
        stdout.write(simbol);
      }
      print('');
    } 
  }
  void objTomatrix(MatrixBase base, int x, int y){
    _posX = x;
    _posY = y;
    for(int i = 0; i < _width; i++){
      for(int j = 0; j < _height; j++){
        base.put(j + x, i + y, '*');
      }
    }
  }
}
