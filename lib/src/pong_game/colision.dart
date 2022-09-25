import 'dart:io';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Colision{

  void checkSquare(Square obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x, obj.posY, 1)){ //ponto inicial 
        print("cima");
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y, 2)){ //ponto superior direito
        print("direita");
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("baixo");
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y, 4)){
        print("esquerda");
      }
    }
  }

}