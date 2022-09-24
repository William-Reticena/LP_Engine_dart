import 'dart:io';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Square{
  late int _height;
  late int _width;
  late int posX;
  late int posY;
  late String carac;

  void create(int width, int height, String simbol){
    _height = height;
    _width = width;
    carac = simbol;
  }

  void objTomatrix(MatrixBase base, int x, int y){
    posX = x;
    posY = y;
    for(int i = 0; i < _width; i++){
      for(int j = 0; j < _height; j++){
        base.put(j + x, i + y, carac);
      } 
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