import 'dart:io';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Square{
  late int height;
  late int width;
  late int posX;
  late int posY;
  late String carac;

  void create(int width, int height, String simbol){
    this.height = height;
    this.width = width;
    carac = simbol;
    /*for(int i = 0; i < height; i++){
      for(int j = 0; j < width; j++){
        stdout.write(simbol);
      }
      print('');
    }*/
  }

  void objTomatrix(MatrixBase base, int x, int y){
    posX = x;
    posY = y;
    for(int i = 0; i < height; i++){
      for(int j = 0; j < width; j++){
        base.put(j + x, i + y, carac);
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