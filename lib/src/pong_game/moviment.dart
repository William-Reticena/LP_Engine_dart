import 'dart:io';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Moviment{


  void movimentTriangle(Triangle obj, MatrixBase base, int x, int y){
    int origemX = obj.posX;
    int origemY = obj.posY;
    int finalX = obj.posX + x;
    int finalY = obj.posY + y;
    while(origemX != finalX && origemY != finalY){
      obj.objDelete(base);
      if(x < 0 && y < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY - 1);
        origemX--;
        origemY--;
      } else if(x < 0 && y > 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY + 1);
        origemX--;
        origemY++;
      } else if(x > 0 && y < 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY - 1);
        origemX++;
        origemY--;
      } else if(x > 0 && y > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY + 1);
        origemX++;
        origemY++;
        base.show(); //movimentação
        //print("teste");
        //print(Process.runSync("clear", [], runInShell: true).stdout);
        //print("\x1B[2J\x1B[0;0H");
      }
    }
  }
  
  void movimentSquare(Square obj, int x, int y){

  }

  void movimentCircle(Circle obj, int x, int y){

  }
}


