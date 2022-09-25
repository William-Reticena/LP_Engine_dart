import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Colision{

  void checkSquare(Square obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
      }
    }
  }

  void checkCircle(Circle obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
      }
    }
  }

  void checkTriangle(Triangle obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
      }
    }
  }

}